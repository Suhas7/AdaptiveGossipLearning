from data_distribution import *
from agent_info import NUM_AGENTS
from BetaPolicy import BetaPolicy
from MnistCnn import MnistCnn
#todo import Model, BetaPolicy

class GossipAgent:
	def __init__(self, aid, distribution = [1]*10, alpha=.5, sigma = .8, coord = [0,0]):
		# Store agent metadata (name, data, filepaths, log output
		# hyperparameters, etc)
		self.id = aid
		self.alpha = alpha
		self.sigma = sigma
		self.data = self.load_agent_data(distribution)
		# Model & Log Outputs
		self.beta_fp = "./betas/agent_{}/".format(aid)
		self.model_fp = "./models/agent_{}/".format(aid)
		self.log_fp = "./logs/agent_{}/".format(aid)
		# TODO Import agent model, both for prediction and beta policy
		self.beta_policy = BetaPolicy() 
		self.model = MnistCnn()
		# Allocate reward structures
		self.local_acc = 0
		self.peer_accs = []
		self.peer_ages = []
		self.peer_idmap = dict()

	def save_models(self, eps):
		torch.save(self.beta_policy.state_dict(), self.beta_fp + "episode_{}.pt".format(eps))
		torch.save(self.MnistCnn.state_dict(), self.model_fp + "episode_{}.pt".format(eps))

	def calculate_total_reward(self):
		return self.local_acc + self.calculate_rpeer()

	def calculate_rpeer(self):
		result = 0
		denom = 0
		for key in self.peer_accs.keys():
			scale = (self.sigma ** self.peer_ages[key])
			denom += scale
			result += self.peer_accs[key]*scale
		if denom == 0:
			return 0
		return result / denom

	def evaluate(self, model):
		#todo complete this
		return AUC, gradient

	def local_step(self):
		# Train a local step on the model
		self.local_acc = 0 #model accuracy

	def update_peer_accs(self, oid, pacc):
		# Update peer_accs
		for pid, other in self.peer_accs.items():
			self.peer_ages[pid] = other[1]+1
		self.peer_accs[oid] = pacc
		self.peer_ages[oid] = 0

	def stage1_comm_model(self, other):
		# Transmit and receive models to start interaction
		self.peer_model = other.model
		other.peer_model = self.model

	def stage2_eval_peer(self, other):
		# Evaluate peer model locally (to compute accuracy & gradient)
		self.peer_acc, self.peer_grad = self.evaluate(self.peer_model)
		other.peer_acc, other.peer_grad = other.evaluate(other.peer_model)
		
	def stage3_comm_accs(self, other):
		# Transmit and receive model accuracies
		self.my_other_acc = other.peer_acc
		other.my_other_acc = self.peer_acc
		self.update_peer_accs(other.id, self.my_other_acc)
		other.update_peer_accs(self.id, other.my_other_acc)

	def stage4_comm_rpeer(self, other):
		# Communicate rpeer values
		self.other_rpeer = other.calculate_rpeer()
		other.other_rpeer = self.calculate_rpeer()

	def stage5_local_updates(self, other):
		self.stage5_helper()
		other.stage5_helper()

	def stage5_helper(self):
		# Given results of first 4 stages, update your local model
		# Calculate beta value
		beta = self.beta_policy(self.local_acc, self.peer_acc, self.calculate_rpeer(), self.other_rpeer)
		# Calculate local gradient
		local_grad = compute_gradient(self.model)
		# Calculate gradient of peer model on local data
		peer_grad = self.peer_grad # precomputed in stage2
		# beta-weighted combined gradient
		composite_grad = local_grad * beta + peer_grad * (1 - beta)
		# 1-step of learning from gradient
		self.model += learning_rate*composite_grad

		#train beta using self.calculate_total_reward()

	def load_agent_data(int_distribution):
	    full_train, full_test = fetch_mnist_data()
	    train_distributor = DataDistributor(full_train, 10)
	    return train_distributor.distribute_data(int_distribution, args.n_train)
	    #test_distributor = DataDistributor(full_test, 10)
	    #test = test_distributor.distribute_data(int_distribution, args.n_test)

