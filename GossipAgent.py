#todo import Model, BetaPolicy

class GossipAgent:
	def __init__(self, alpha=.5):
		# Store agent metadata (name, data, filepaths, log output
		# hyperparameters, etc)
		self.id = aid
		self.beta_fp = beta_filepath
		#todo allocate 
		self.model_fp = model_filepath
		self.log_fp = log_filepath
		self.data = None
		self.alpha = alpha
		self.sigma = sigma
		# TODO Import agent model, both for prediction and beta policy
		self.beta_policy = Model() 
		self.model = BetaPolicy()
		# Allocate reward structures
		self.local_acc = 0
		self.peer_accs = dict()

	def calculate_total_reward(self):
		return self.local_acc + self.calculate_rpeer()

	def calculate_rpeer(self):
		# todo: make faster using numpy
		result = 0
		denom = 0
		for key, value in self.peer_accs.items():
			scale = (self.sigma ** value[1])
			denom += scale
			result += value[0]*scale
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
		for pid, other in self.peer_accs:
			self.peer_accs[pid] = (other[0], other[1]+1)
		self.peer_accs[oid] = (pacc, 0)

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
