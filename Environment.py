from GossipAgent import GossipAgent
import random as rd

class Environment:
	def __init__(self, info):
		# Hyperparameters
		self.local_step_freq = 5 #number of local steps between each peer step.
		self.adjacencies = info.adjacency_matrix
		# Allocate agents
		self.agents = dict()
		for agent in info.agent_info:
			self.agents[agent.id] = GossipAgent(agent)
	def env_step(self):
		# Execute all local steps
		for _ in range(self.local_step_freq):
			for key,agent in self.agents:
				agent.local_step()
		# Execute peer step
		pairs = [] # TODO calculate each pair of peers to interact based on adjacency graph/random walk
		visited = set()
		for agent1 in self.agents.keys()
			if agent1 in visited: continue
			if len(visited) + 1 >= len(self.agents.keys()): continue
			visited.add(agent1)
			agent2 = rd.select(self.agents.keys())
			if agent2 not in visited:
				pairs.append((self.agents[agent1],self.agents[agent2]))

		for pr in pairs:
			# Note that there is one primary and one secondary peer.
			# This chooses arbitrarily who communicates first, for simplicity
			pr[0].peer_step(pr[1])