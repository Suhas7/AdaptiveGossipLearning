# This class decides which peers should interact at any given timestep

from absl import flags, logging

import numpy as np
from collections import defaultdict

FLAGS = flags.FLAGS
flags.DEFINE_integer('env_seed', 0, lower_bound=0, help='')
flags.DEFINE_string('env_mode', 'grid', help='')
flags.DEFINE_integer('env_grid_h', 3, lower_bound=1, help='')
flags.DEFINE_integer('env_grid_w', 3, lower_bound=1, help='')

class Environment:
    def __init__(self, agent_ids, agent_pos, seed=None, mode="grid", grid_h=10, grid_w=10):
        self.agent_ids = agent_ids
        self.seed = seed
        self.rng = np.random.default_rng(seed)
        self.G = defaultdict(lambda: [])
        self.agent_pos = dict()

        if mode == 'grid':
            self.grid_h = grid_h
            self.grid_w = grid_w
            self.build_grid(grid_h, grid_w)

        for agent_id, (x, y) in zip(agent_ids, agent_pos):
            self.agent_pos[agent_id] = self.__grid2id(grid_h, grid_w, x, y)

        logging.info('Env initialized with {} agents.'.format(len(agent_pos)))

        for i in agent_ids:
            logging.debug('agent id {} at pos {}'.format(i, self.agent_pos[i]))

    def __grid2id(self, grid_h, grid_w, x, y):
        return grid_h * x + y

    def build_grid(self, grid_h, grid_w):
        dx = [1, 0, -1, 0]
        dy = [0, 1, 0, -1]
        for i in range(grid_h):
            for j in range(grid_w):
                for (x, y) in zip(dx, dy):
                    I, J = i + x, j + y
                    if I < 0 or I >= grid_h or J < 0 or J >= grid_w:
                        continue
                    self.G[self.__grid2id(grid_h, grid_w, i, j)].append(self.__grid2id(grid_h, grid_w, I, J))

    def step(self):
        logging.debug('env step start')
        pos_agent_list = defaultdict(lambda: [])
        for agent_id in self.agent_ids:
            cur_node = self.agent_pos[agent_id]
            #next_node = self.rng.choice(self.G[cur_node])
            next_node = cur_node

            self.agent_pos[agent_id] = next_node
            pos_agent_list[next_node].append(agent_id)

        agent_pairs = []
        for node, agent_list in pos_agent_list.items():
            permu = self.rng.permutation(agent_list)
            for i in range(0, len(permu)-1, 2):
                agent_pairs.append((permu[i], permu[i + 1]))

        logging.debug('env step done with paired agent {}'.format(agent_pairs))

        return agent_pairs

    def reset(self, agent_pos, seed=None):
        self.agent_pos = agent_pos
        if seed is not None:
            self.seed = seed
            self.rng = np.random.default_rng(seed)


if __name__ == '__main__':
    env = Environment([1, 2, 3, 4, 5], seed=0, mode="grid", grid_h=3, grid_w=3)
    print(env.step())

