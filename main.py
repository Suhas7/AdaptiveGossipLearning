import random

import torch.random
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

def main(argv):
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
    test_dataloader = DataLoader(full_test, batch_size=64, shuffle=True)

    # Run environment
    for i in range(FLAGS.num_env_steps):
        logging.debug("Beginning env_step {}".format(i))
        driver.env_step()
        logging.debug("Env step #%d", i)
        # Test each agent model against test dataset
        for id, agent in driver.agents.items():
            aucs[id].append(agent.evaluate(agent.model, test_dataloader)[0])
            local_aucs[id].append(agent.evaluate(agent.model, agent.dataloader)[0])
    
    print(aucs)
    x = np.arange(FLAGS.num_env_steps)
    for id in driver.agents.keys():
        plt.plot(x, aucs[id], label=f'{id}')
    plt.savefig("Agents Curve", bbox_inches='tight')
    plt.clf()
    #plt.show()

    print(local_aucs)
    x = np.arange(FLAGS.num_env_steps)
    for id in driver.agents.keys():
        plt.plot(x, local_aucs[id], label=f'{id}')
    plt.savefig("Agents local test Curve", bbox_inches='tight')
    plt.clf()
    #plt.show()

if __name__ == '__main__':
    app.run(main)
