import numpy as np
import torch
import torch.nn.functional as F
from absl import logging
import os

from torch.utils.data import TensorDataset, DataLoader

from BetaPolicy import BetaPolicy
from MnistCNN import MnistCnn
from sklearn import metrics
from absl import flags

device = 'cuda' if torch.cuda.is_available() else 'cpu'

''''''
class GossipAgent:
    def __init__(self, aid, data, alpha=.5, sigma = .8, beta_num=11,
                 coord=[0,0], lr=1e-4, combine_grad=False):
        # Agent metadata and hyper-parameters
        self.id = aid
        self.alpha = alpha
        self.sigma = sigma

        # TODO: Load test data as well
        # XXX: change this to correct training data
        self.data = data
        # self.data = TensorDataset(torch.cat(self.load_agent_data(distribution)))
        # print(self.data[0])
        self.dataloader = DataLoader(self.data, batch_size=64, shuffle=True)

        # Import agent model, both for prediction and beta policy
        self.beta_num = beta_num  # Number of discrete beta values to choose from
        self.beta_policy = BetaPolicy(4, beta_num)
        self.beta_action = np.linspace(0, 1, beta_num)
        self.beta_optimizer = torch.optim.Adam(self.beta_policy.parameters(), lr=lr)
        self.model = MnistCnn()
        self.optimizer = torch.optim.Adam(self.model.parameters(), lr=lr)
        self.peer_model = MnistCnn()

        # Model & Log Outputs
        self.beta_fp = "./betas/agent_{}/".format(aid)
        self.model_fp = "./models/agent_{}/".format(aid)
        self.log_fp = "./logs/agent_{}/".format(aid)

        # Allocate reward structures
        self.local_auc = 0
        self.loss = 0
        self.peer_loss = 0
        self.peer_accs = dict()
        self.peer_ages = dict()
        self.peer_idmap = dict()
        self.combine_grad = combine_grad
        self.local_auc_history = []

    def save_models(self, eps):
        torch.save(self.beta_policy.state_dict(), self.beta_fp + "episode_{}.pt".format(eps))
        torch.save(self.MnistCnn.state_dict(), self.model_fp + "episode_{}.pt".format(eps))

    def calculate_total_reward(self):
        return self.local_auc + self.calculate_rpeer()

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

    def evaluate(self, model, dataloader):
        # TODO: add option to sample from dataset to evaluate model
        model.eval()
        with torch.no_grad():
            loss = 0
            labels = []
            preds = []
            from tqdm import tqdm
            for data, label in tqdm(dataloader):
                pred = model(data)
                loss += torch.nn.functional.cross_entropy(pred, label).item()
                labels.append(label)
                preds.append(pred.topk(k=1).indices)

            labels = torch.cat(labels)
            preds = torch.cat(preds)
            # TODO: change variable names
            auc = metrics.f1_score(labels.cpu().numpy(), preds.cpu().numpy(), average='macro')

            if model == self.model:
                self.local_auc_history.append(auc)

        return auc, loss

    def local_step(self, steps=1):
        # Train `steps` local step on the model
        self.model.train()
        data, label = next(iter(self.dataloader))
        for i, (data, label) in enumerate(self.dataloader):
            if i >= steps:
                break
            pred = self.model(data)
            loss = torch.nn.functional.cross_entropy(pred, label)

            self.optimizer.zero_grad()
            loss.backward()
            self.optimizer.step()


    def update_peer_accs(self, oid, pacc):
        # Update peer_accs
        for pid in self.peer_ages.keys():
            self.peer_ages[pid] += 1
        self.peer_accs[oid] = pacc
        self.peer_ages[oid] = 0

    def stage1_comm_model(self, other):
        logging.debug('stage 1')
        # Transmit and receive models to start interaction
        # Make a copy of the other's model
        self.peer_model.load_state_dict(other.model.state_dict())
        other.peer_model.load_state_dict(self.model.state_dict())

    def stage2_eval_peer(self, other):
        logging.debug('stage 2')
        # Evaluate peer model locally (to compute accuracy & gradient)
        self.peer_acc, self.peer_loss = self.evaluate(self.peer_model, self.dataloader)
        other.peer_acc, other.peer_loss = other.evaluate(other.peer_model, other.dataloader)

    def stage3_comm_accs(self, other):
        logging.debug('stage 3')
        # Transmit and receive model accuracies
        self.my_other_acc = other.peer_acc
        other.my_other_acc = self.peer_acc
        self.update_peer_accs(other.id, self.my_other_acc)
        other.update_peer_accs(self.id, other.my_other_acc)

    def stage4_comm_rpeer(self, other):
        logging.debug('stage 4')
        # Communicate rpeer values
        self.other_rpeer = other.calculate_rpeer()
        other.other_rpeer = self.calculate_rpeer()

    def stage5_local_updates(self, other):
        logging.debug('stage 5')
        self.stage5_helper()
        other.stage5_helper()

    def stage5_helper(self):
        # Given results of first 4 stages, update your local model
        # Calculate local gradient
        self.local_auc, self.loss = self.evaluate(self.model, self.dataloader)

        # Calculate beta value
        policy = self.beta_policy(self.local_auc, self.peer_acc, self.calculate_rpeer(), self.other_rpeer)
        beta = np.random.choice(self.beta_action, p=policy.detach().cpu().numpy())

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
        reward = self.alpha * self.local_auc + (1 - self.alpha) * self.calculate_rpeer()
        # TODO: fix this later
        beta_id = int(beta * (self.beta_num - 1))
        logging.debug('beta id {} beta {}'.format(beta_id, beta))
        action_onehot = F.one_hot(torch.tensor(beta_id), self.beta_num)
        beta_loss = torch.sum(torch.log(torch.clip(action_onehot * policy, 1e-10, 1.0)) * reward)
        self.beta_optimizer.zero_grad()
        beta_loss.backward()
        self.beta_optimizer.step()
