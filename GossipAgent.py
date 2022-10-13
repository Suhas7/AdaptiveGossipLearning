import numpy as np
import torch
import torch.nn.functional as F

from data_distribution import *
from agent_info import NUM_AGENTS
from BetaPolicy import BetaPolicy
from MnistCnn import MnistCnn
#todo import Model, BetaPolicy
from sklearn import metrics

class GossipAgent:
    def __init__(self, aid, distribution=[1]*10, alpha=.5, sigma = .8, beta_num=11,
                 coord=[0,0], lr=1e-4, combine_grad=False):
        # Store agent metadata (name, data, filepaths, log output
        # hyperparameters, etc)
        self.id = aid
        self.alpha = alpha
        self.sigma = sigma
        # TODO: data
        self.data = self.load_agent_data(distribution)
        # Model & Log Outputs
        self.beta_fp = "./betas/agent_{}/".format(aid)
        self.model_fp = "./models/agent_{}/".format(aid)
        self.log_fp = "./logs/agent_{}/".format(aid)
        # TODO Import agent model, both for prediction and beta policy
        self.beta_num = beta_num  # Number of discrete beta values to choose from
        self.beta_policy = BetaPolicy(4, beta_num)
        self.beta_action = np.linspace(0, 1, beta_num)
        self.beta_optimizer = torch.optim.Adam(self.beta_policy, lr=lr)
        self.model = MnistCnn()
        self.optimizer = torch.optim.Adam(self.model, lr=lr)
        self.peer_model = MnistCnn()
        # Allocate reward structures
        self.local_acc = 0
        self.loss = 0
        self.peer_loss = 0
        self.peer_accs = []
        self.peer_ages = []
        self.peer_idmap = dict()
        self.combine_grad = combine_grad

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
        loss = 0
        AUC = 0
        # todo: can we do this in one step?
        for id, (data, label) in self.data:
            pred = model(data)
            loss += torch.nn.CrossEntropyLoss(pred, label)
            auc = metrics.roc_auc_score(label, pred)
            AUC += auc
            # this is accuracy
            # AUC = (AUC + torch.sum(torch.eq(pred, label)) / label.shape[0]) / 2
        return AUC, loss

    def local_step(self):
        # Train a local step on the model
        self.local_acc, self.loss = self.evaluate(self.model)
        self.optimizer.zero_grad()
        self.loss.backward()
        self.optimizer.step()

    def update_peer_accs(self, oid, pacc):
        # Update peer_accs
        for pid, other in self.peer_accs.items():
            self.peer_ages[pid] = other[1]+1
        self.peer_accs[oid] = pacc
        self.peer_ages[oid] = 0

    def stage1_comm_model(self, other):
        # Transmit and receive models to start interaction
        # Make a copy of the other's model
        self.peer_model.load_state_dict(other.model.state_dict())
        other.peer_model.load_state_dict(self.model.state_dict())

    def stage2_eval_peer(self, other):
        # Evaluate peer model locally (to compute accuracy & gradient)
        self.peer_acc, self.peer_loss = self.evaluate(self.peer_model)
        other.peer_acc, other.peer_loss = other.evaluate(other.peer_model)

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
        # Calculate local gradient
        self.local_acc, self.loss = self.evaluate(self.model)

        # Calculate beta value
        policy = self.beta_policy(self.local_acc, self.peer_acc, self.calculate_rpeer(), self.other_rpeer)
        beta = np.random.choice(self.beta_action, p=policy)

        # Calculate gradient of peer model on local data (already done in stage 2)

        # Combine models
        # Approach 1: combine gradients with beta-weight
        if self.combine_grad:
            self.optimizer.zero_grad()
            self.loss.backward()
            self.peer_loss.backward()
            for local_param, peer_param in zip(self.model.parameters(), self.peer_model.parameters()):
                local_param.grad = local_param.grad * beta + peer_param.grad * (1 - beta)
                self.optimizer.step()  # 1-step of learning from gradient

        # Approach 2: combine model parameters with beta-weight
        # todo: might want to update model before stage 1 when using this approach
        else:
            state = self.model.state_dict()
            peer_state = self.peer_model.state_dict()
            for layer in state:
                state[layer] = state[layer] * beta + peer_state[layer] * (1 - beta)
            self.model.load_state_dict(state)  # is this step necessary?

        # train beta using self.calculate_total_reward()
        reward = self.alpha * self.local_acc + (1 - self.alpha) * self.calculate_rpeer()
        action_onehot = F.one_hot(np.where(self.beta_action == beta), self.beta_num)
        beta_loss = torch.log(torch.clip(action_onehot * policy, 1e-10, 1.0)) * reward
        self.beta_optimizer.zero_grad()
        beta_loss.backward()
        self.beta_optimizer.step()



    def load_agent_data(int_distribution):
        full_train, full_test = fetch_mnist_data()
        train_distributor = DataDistributor(full_train, 10)
        return train_distributor.distribute_data(int_distribution, args.n_train)
        #test_distributor = DataDistributor(full_test, 10)
        #test = test_distributor.distribute_data(int_distribution, args.n_test)

