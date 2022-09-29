from GossipAgent import GossipAgent
from agent_info import agent_info, NUM_AGENTS
import random as rd

class Driver:
	def __init__(self, info):
		# Hyperparameters
		self.local_step_freq = 5 #number of local steps between each peer step.
		self.adjacencies = info.adjacency_matrix
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
		for i in range(NUM_AGENTS):
			self.agents[i] = GossipAgent(i, distribution=agent_info["dists"][i], 
											alpha=agent_info["alpha"][i], 
											sigma=agent_info["sigma"][i], 
											coord = agent_info["start_coords"][i])

	def env_step(self):
		# Execute all local steps
		for _ in range(self.local_step_freq):
			for key,agent in self.agents.items():
				agent.local_step()
		# Execute peer step
		#TODO split this out as "environment" object
		pairs = [] # TODO calculate each pair of peers to interact based on adjacency graph/random walk
		visited = set()
		for agent1 in self.agents.keys()
			if agent1 in visited: continue
			if len(visited) + 1 >= len(self.agents.keys()): continue
			visited.add(agent1)
			agent2 = rd.select(self.agents.keys())
			if agent2 not in visited:
				pairs.append((self.agents[agent1],self.agents[agent2]))
				visited.add(agent2)

		for pr in pairs:
			# Note that there is one primary and one secondary peer.
			# This chooses arbitrarily who communicates first, for simplicity
			peer_step(pr[0], pr[1])

	def peer_step(self, agentA, agentB):
		# Given a peer, communicate with them using following helper function
		# todo make this async friendly
		agentA.stage1_comm_model(agentB)
		agentA.stage2_eval_peer(agentB)
		agentA.stage3_comm_accs(agentB)
		agentA.stage4_comm_rpeer(agentB)
		agentA.stage5_local_updates(agentB)
