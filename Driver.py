import copy

import torch
import wandb
from absl import flags, logging

from GossipAgent import GossipAgent
from agent_info import getAgentConfig
from Environment import Environment
from data_distribution import fetch_mnist_data, DataDistributor

FLAGS = flags.FLAGS
flags.DEFINE_string('agent_info_mode', None, help='')
flags.mark_flag_as_required('agent_info_mode')
flags.DEFINE_integer('local_step_freq', 5, lower_bound=0, help='')
flags.DEFINE_bool('combine_grad', False, help='')


class Driver:
    def __init__(self, num_agents, agent_info_mode, local_step_freq, n_train_img, device):
        # Hyperparameters
        self.local_step_freq = local_step_freq  # number of local steps between each peer step.

        # Create training data distributor
        full_train = fetch_mnist_data()[0]
        self.distributor = DataDistributor(full_train, num_classes=FLAGS.num_class, device=device)

        # Allocate agents
        '''
			Agent Name
			name of model to use
			log filepath
			Data distribution
			Starting coordinates
			alpha, sigma
		'''
        self.agents = dict()
        agentConfig = getAgentConfig(agent_info_mode)
        self.n_train_img = n_train_img

        for i in range(num_agents):
            self.agents[i] = GossipAgent(
                aid=i,
                data=self.distributor.distribute_data(agentConfig.dists[i], self.n_train_img),
                alpha=agentConfig.alphas[i],
                sigma=agentConfig.sigmas[i],
                coord=agentConfig.start_coords[i],
                combine_grad=FLAGS.combine_grad,
                device=device,
                dummy=agentConfig.dummy[i]
            )
            logging.debug('Driver: agents {} created'.format(i))

        # Environment
        self.env = Environment(
            agent_ids=list(range(num_agents)),
            agent_pos=agentConfig.start_coords,
            seed=FLAGS.env_seed,
            mode=FLAGS.env_mode,
            grid_h=FLAGS.env_grid_h,
            grid_w=FLAGS.env_grid_w
        )
        logging.debug('Driver: env created')
        # Environment data
        self.episode_count = 0

    def env_step(self):
        # Execute all local steps
        if FLAGS.wandb:
            wandb.log({'round': self.episode_count + 1}, commit=False)
        count = 0
        for key, agent in self.agents.items():
            logging.debug('Agent %d local step' % key)
            avg_loss = agent.local_step(self.local_step_freq)
            if FLAGS.wandb:
                wandb.log({f'train/loss_{agent.id}': avg_loss}, commit=count == FLAGS.num_agents - 1)
            count += 1

        logging.debug('Complete local step')
        agent_pairs = self.env.step()
        for pr in agent_pairs:
            # Note that there is one primary and one secondary peer.
            # This chooses arbitrarily who communicates first, for simplicity
            self.peer_step(pr[0], pr[1])
        self.episode_count += 1
        logging.debug("Completed episode %d", self.episode_count)

    def peer_step(self, agentA, agentB):
        agentA = self.agents[agentA]
        agentB = self.agents[agentB]
        logging.debug('Peer step begun between agents %d and %d' % (agentA.id, agentB.id))

        # Given a peer, communicate with them using following helper function
        # todo make this async friendly
        agentA.stage1_comm_model(agentB)
        agentA.stage2_eval_peer(agentB)
        agentA.stage3_comm_accs(agentB)
        agentA.stage4_comm_rpeer(agentB)
        agentA.stage5_local_updates(agentB, self.episode_count)
    # agentA.save_models(self.episode_count)
    # agentB.save_models(self.episode_count)

# def load_agent_data(self, int_distribution):
# TODO: we're creating 1 distributor for 1 agent now, maybe we should use 1 distributor for all agents
# 	full_train, full_test = fetch_mnist_data()
# 	train_distributor = DataDistributor(full_train, num_classes=FLAGS.num_class)
# 	return train_distributor.distribute_data(int_distribution, self.n_train_img)
