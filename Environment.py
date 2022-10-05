# This class decides which peers should interact at any given timestep

import numpy as np
from collections import defaultdict

class Environment:
	def __init__(self, agent_ids, agent_pos=None, seed=None, mode="grid", grid_h=10, grid_w=10, node_count=10, edge_count=30):
		self.agent_ids = agent_ids
		self.seed = seed
		self.rng = np.random.default_rng(seed)
		self.G = defaultdict(lambda: [])

		if mode == 'grid':
			self.grid_h = grid_h
			self.grid_w = grid_w
			self.build_grid(grid_h, grid_w)
		elif mode == 'graph':
			self.node_count = node_count
			self.edge_count = edge_count
			self.build_random_graph(node_count, edge_count)

		if agent_pos is None:
			self.agent_pos = {}
			node_list = list(self.G.keys())
			self.rng.shuffle(node_list)
			for agent_id, pos in zip(agent_ids, node_list):
				self.agent_pos[agent_id] = pos
		else:
			for agent_id, (x, y) in zip(agent_ids, agent_pos):
				self.agent_pos[agent_id] = __grid2id(grid_h, grid_w, x, y)

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

	def build_random_graph(self, node_count, edge_count):
		# TODO
		pass

	def step(self):
		pos_agent_list = defaultdict(lambda: [])
		for agent_id in self.agent_ids:
			cur_node = self.agent_pos[agent_id]
			next_node = self.rng.choice(self.G[cur_node])

			self.agent_pos[agent_id] = next_node
			pos_agent_list[next_node].append(agent_id)

		agent_pairs = []
		for node, agent_list in pos_agent_list.items():
			permu = self.rng.permutation(agent_list)
			for i in range(0, len(permu)-1, 2):
				agent_pairs.append((agent_list[i], agent_list[i + 1]))

		return agent_pairs

if __name__ == '__main__':
	env = Environment([1, 2, 3, 4, 5], seed=0, mode="grid", grid_h=3, grid_w=3)
	print(env.step())

