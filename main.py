import os.path
import random
import torch.random
import wandb
from absl import app, flags, logging
import matplotlib.pyplot as plt
import numpy as np
from torch.utils.data import DataLoader

from Driver import Driver
from data_distribution import fetch_mnist_data
from supervised_learner import SLBetaModel

logging.set_verbosity(logging.INFO)

FLAGS = flags.FLAGS

flags.DEFINE_integer('num_env_steps', 100, lower_bound=2, help='')
flags.DEFINE_integer('n_train_img', 1000, lower_bound=2, help='')
flags.DEFINE_string('logdir', 'tmp', help='')
flags.DEFINE_bool('wandb', True, help='')
flags.DEFINE_string('comment', '', help='')

import torch.nn as nn
import torch
class nnBeta(nn.Module):
    def __init__(self, in_dim):
        super().__init__()
        self.net = nn.Sequential(
                nn.Linear(in_dim, in_dim*2),
                nn.Tanh(),
                nn.Linear(in_dim*2, 1),
                nn.Sigmoid()
            )
    def forward(self, x):
        return self.net(x)
    def predict(self, x):
        return self.forward(torch.as_tensor(x).float())

class customLayer(nn.Module):
    def __init__(self, in_dim):
        super().__init__()
        self.in_dim = in_dim
        self.params = nn.Parameter(.5 * torch.ones(7))
        self.bias = nn.Parameter(torch.zeros(2))

    def forward(self, x):
        accs = []
        for i in range(self.in_dim):
            for j in range(self.in_dim):
                A1 = x[:, i]     #perf gap on MD_i
                A2 = x[:, j]     #perf gap on MD_j
                A3 = x[:, self.in_dim+i]  #perf gap on YD_i
                A4 = x[:, self.in_dim+j]  #perf gap on YD_j
                D1 = x[:, 2 * self.in_dim + i] # difference in freq for i
                D2 = x[:, 2 * self.in_dim + j] # difference in freq for j
                info = [A1,A2,A3,A4,D1,D2]
                for k in range(len(info)):
                    accs.append(torch.tanh(info[k]*self.params[k] + self.bias[0]) * self.params[-1] + self.bias[1])
        return torch.vstack(accs).permute(1, 0)

class customNNBeta(nn.Module):
    def __init__(self, in_dim, num_labels):
        super().__init__()
        self.layer1 = customLayer(num_labels)
#        self.layer2 = customLayer(num_labels)

    def forward(self, x):
#        print(x.size())
        x = self.layer1(x)
#        print(x.size())
#        x = self.layer2(x)
#        print(x.size())

        return torch.sigmoid(x.sum(dim=1))

    def predict(self, x):
        return self.forward(torch.as_tensor(x).float())

def setup():
    if FLAGS.wandb:
        config = dict(
            num_agent=FLAGS.num_agents,
            num_dumb=FLAGS.num_dumb,
            nskew=FLAGS.nskew,
            dskew=FLAGS.topweight/FLAGS.baseweight,
            num_class=FLAGS.num_class,
            num_image=FLAGS.n_train_img,
            local_freq=FLAGS.local_step_freq,
            combine_grad=FLAGS.combine_grad,
            env_mode=FLAGS.env_mode,
            grid_h=FLAGS.env_grid_h,
            grid_w=FLAGS.env_grid_w,
            vector=FLAGS.vector_rp,
            decay=FLAGS.decay_lr,
            seed=FLAGS.seed
        )
        group = "_".join([f"AGT{FLAGS.num_agents}-{FLAGS.num_dumb}",
                          f"IMG{FLAGS.n_train_img}",
                          f"SKW{FLAGS.nskew}-{FLAGS.topweight/FLAGS.baseweight}",
			  ]) + FLAGS.comment
        tags = ('v' if FLAGS.vector_rp else "") + ('d' if FLAGS.decay_lr else "") + str(FLAGS.seed)
        net = FLAGS.beta_net.strip("pretrain-")
        name = f"{net}-{tags}"
#        if len(FLAGS.comment) != 0: name += '_' + FLAGS.comment
        wandb.init(project='gossip', entity='gossips', group=group, job_type=tags, name=name,
                   config=config)
        wandb.define_metric('round')
        wandb.define_metric('comm_loss/*', step_metric='round')
        wandb.define_metric('comm_r/*', step_metric='round')
        wandb.define_metric('comm/*', step_metric='round')
        wandb.define_metric('avg/*', step_metric='round')
        wandb.define_metric('auc/*', step_metric='round')
        wandb.define_metric('local_auc/*', step_metric='round')
        if FLAGS.logdir == 'tmp':
            if net.startswith('cheat'):
                FLAGS.logdir = f'./oracle/{group}_{name}'
            else:
                FLAGS.logdir = f'./exp/{group}_{name}'

def main(argv):
    setup()

    if not os.path.exists(FLAGS.logdir):
        os.makedirs(FLAGS.logdir)
    with open(f'{FLAGS.logdir}/config.txt', 'w') as f:
        print(FLAGS.__flags, file=f)
    random.seed(0)
    np.random.seed(0)
    torch.manual_seed(0)

    # Select device
    if torch.cuda.is_available():
        device = torch.device('cuda')
#    elif torch.backends.mps.is_available():
#        device = torch.device('mps')
    else:
        device = torch.device('cpu')

    # Fetch test dataset
    _, full_test = fetch_mnist_data()
    test_dataloader = DataLoader(full_test, batch_size=256, shuffle=False)

    driver = Driver(
        num_agents      = FLAGS.num_agents, 
        local_step_freq = FLAGS.local_step_freq,
        n_train_img     = FLAGS.n_train_img,
        device          = device,
        oracle_data     = full_test
    )

    # Dictionary to store performance at each step
    aucs = dict()
    local_aucs = dict()
    for id in driver.agents.keys():
        aucs[id] = list()
        local_aucs[id] = list()

    # Run environment
    for i in range(FLAGS.num_env_steps):
        logging.debug("Beginning env_step {}".format(i))
        driver.env_step()
        logging.info("Env step #%d", i)
        avg_auc = 0
        avg_local_auc = 0

        # Test each agent model against test dataset
        for id, agent in driver.agents.items():
            if agent.dumb:
                continue
            auc = agent.evaluate(agent.model, test_dataloader)[0]
            local_auc = agent.evaluate(agent.model, agent.dataloader)[0]
            logging.debug(f'agent {id} auc {auc:.5f} local_auc {local_auc:.5f}')
            aucs[id].append(auc)
            local_aucs[id].append(local_auc)

            # Log to wandb
            if FLAGS.wandb:
                avg_auc += auc
                avg_local_auc += local_auc
                wandb.log({'auc/'+str(id): auc, 'local_auc/'+str(id): local_auc}, commit=False)

        if FLAGS.wandb:
            avg_auc /= FLAGS.num_agents - FLAGS.num_dumb
            avg_local_auc /= FLAGS.num_agents - FLAGS.num_dumb
            wandb.log({'avg/auc': avg_auc, 'avg/local_auc': avg_local_auc})


    # local logging
    with open(f'{FLAGS.logdir}/Agent_auc.txt', 'a') as f:
        for id in aucs:
            print(id, file=f)
            print(aucs[id], file=f)
    x = np.arange(FLAGS.num_env_steps)
    k = 10
    print(f'AUC (last {k})')
    # for id in driver.agents.keys():
    #     print(id, aucs[id][-k:])
    #     plt.plot(x, aucs[id], label=f'{id}')
    # plt.legend()
    # plt.savefig(f"{FLAGS.logdir}/Agents Curve", bbox_inches='tight')
    # plt.clf()
    #plt.show()

    with open(f'{FLAGS.logdir}/Agent_local_auc.txt', 'a') as f:
        for id in local_aucs:
            print(id, file=f)
            print(local_aucs[id], file=f)
    x = np.arange(FLAGS.num_env_steps)
    k = 10
    print(f'local AUC (last {k})')
    # for id in driver.agents.keys():
    #     print(id, local_aucs[id][-k:])
    #     plt.plot(x, local_aucs[id], label=f'{id}')
    # plt.legend()
    # plt.savefig(f"{FLAGS.logdir}/Agents local test Curve", bbox_inches='tight')
    # plt.clf()
    #plt.show()

if __name__ == '__main__':
    app.run(main)


