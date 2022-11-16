import os.path
import random

import torch.random
import wandb
from absl import app, flags, logging
from Driver import Driver
from data_distribution import fetch_mnist_data
import matplotlib.pyplot as plt
import numpy as np
from torch.utils.data import DataLoader

logging.set_verbosity(logging.DEBUG)

FLAGS = flags.FLAGS

flags.DEFINE_integer('num_env_steps', None, lower_bound=2, help='')
flags.mark_flag_as_required('num_env_steps')
flags.DEFINE_integer('n_train_img', 1000, lower_bound=2, help='')
flags.DEFINE_string('logdir', None, help='')
flags.mark_flag_as_required('logdir')
flags.DEFINE_bool('wandb', True, help='')

def setup():
    if FLAGS.wandb:
        config = dict(
            num_agent=FLAGS.num_agents,
            num_image=FLAGS.n_train_img,
            num_class=FLAGS.num_class,
            mode=FLAGS.agent_info_mode,
            local_freq=FLAGS.local_step_freq,
            combine_grad=FLAGS.combine_grad,
            env_mode=FLAGS.env_mode,
            grid_h=FLAGS.env_grid_h,
            grid_w=FLAGS.env_grid_w
        )
        name = str(FLAGS.num_agents) + '_' + FLAGS.agent_info_mode + '_' + FLAGS.beta_net
        wandb.init(project='Gossip Learning', entity='gossips', group='grid_not_move', job_type='test', name=name,
                   config=config)
        wandb.define_metric('round')
        wandb.define_metric('comm/*', step_metric='round')
        wandb.define_metric('auc/*', step_metric='round')
        wandb.define_metric('local_auc/*', step_metric='round')

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
    elif torch.backends.mps.is_available():
        device = torch.device('mps')
    else:
        device = torch.device('cpu')

    driver = Driver(
        num_agents      = FLAGS.num_agents, 
        agent_info_mode = FLAGS.agent_info_mode, 
        local_step_freq = FLAGS.local_step_freq,
        n_train_img     = FLAGS.n_train_img,
        device          = device
    )

    # Dictionary to store performance at each step
    aucs = dict()
    local_aucs = dict()
    for id in driver.agents.keys():
        aucs[id] = list()
        local_aucs[id] = list()

    # Fetch test dataset
    _, full_test = fetch_mnist_data()
    test_dataloader = DataLoader(full_test, batch_size=256, shuffle=False)

    # Run environment
    for i in range(FLAGS.num_env_steps):
        logging.debug("Beginning env_step {}".format(i))
        driver.env_step()
        logging.debug("Env step #%d", i)

        # Test each agent model against test dataset
        for id, agent in driver.agents.items():
            auc = agent.evaluate(agent.model, test_dataloader)[0]
            local_auc = agent.evaluate(agent.model, agent.dataloader)[0]
            aucs[id].append(auc)
            local_aucs[id].append(local_auc)

            # Log to wandb
            count = 0
            if count < FLAGS.num_agents - 1:
                wandb.log({'auc/'+str(id): auc, 'local_auc/'+str(id): local_auc}, commit=False)
                count += 1
            else:
                wandb.log({'auc/' + str(id): auc, 'local_auc/' + str(id): local_auc})

    with open(f'{FLAGS.logdir}/Agent_auc.txt', 'a') as f:
        for id in aucs:
            print(id, file=f)
            print(aucs[id], file=f)
    x = np.arange(FLAGS.num_env_steps)
    for id in driver.agents.keys():
        plt.plot(x, aucs[id], label=f'{id}')
    #output = sum(np.asarray(list(driver.agents.values()))/len(driver.agents.keys())
    #print(output)
    plt.legend()
    plt.savefig(f"{FLAGS.logdir}/Agents Curve", bbox_inches='tight')
    plt.clf()
    #plt.show()

    with open(f'{FLAGS.logdir}/Agent_local_auc.txt', 'a') as f:
        for id in local_aucs:
            print(id, file=f)
            print(local_aucs[id], file=f)
    x = np.arange(FLAGS.num_env_steps)
    k = 10
    print(f'local AUC (last {k})')
    for id in driver.agents.keys():
        print(id, local_aucs[id][-k:])
        plt.plot(x, local_aucs[id], label=f'{id}')
    plt.legend()
    plt.savefig(f"{FLAGS.logdir}/Agents local test Curve", bbox_inches='tight')
    plt.clf()
    #plt.show()

if __name__ == '__main__':
    app.run(main)


