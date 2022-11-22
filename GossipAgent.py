import numpy as np
import torch
import torch.nn.functional as F
import wandb
from torch.utils.data import DataLoader
from absl import logging, flags
from tqdm import tqdm

from policy import LinearCritic, LinearPolicy
from models import MnistMlp
from sklearn import metrics

FLAGS = flags.FLAGS
flags.DEFINE_string('beta_net', 'classify', help='')
flags.DEFINE_bool('cheat', True, help='')

class GossipAgent:
    def __init__(self, aid, data, alpha=.5, sigma=.8, beta_num=11,
                 coord=[0,0], lr=1e-2, combine_grad=False, device='cpu', dummy=False, cheat_data=None):
        # Agent metadata and hyper-parameters
        self.id = aid
        self.alpha = alpha
        self.sigma = sigma
        self.dumb = dummy

        # TODO: Load test data as well
        self.data = data
        logging.info(f'agent {self.id} data size {len(data)}')
        self.dataloader = DataLoader(self.data, batch_size=64, shuffle=True)
        logging.info(f'agent {self.id} step per epoch {len(self.dataloader)}')
        self.device = device

        self.cheat_data = cheat_data
        self.cheat_dataloader = None
        if cheat_data is not None:
            self.cheat_dataloader = DataLoader(cheat_data, batch_size=64, shuffle=True)

        # Import agent model, both for prediction and beta policy
        if FLAGS.beta_net == 'classify':
            self.beta_num = beta_num  # Number of discrete beta values to choose from
            self.beta_policy = LinearPolicy(4, beta_num).to(device)
            self.beta_action = np.linspace(0, 1, beta_num)
            self.beta_optimizer = torch.optim.Adam(self.beta_policy.parameters(), lr=lr)
        elif FLAGS.beta_net == 'ddpg':
            self.beta_policy = LinearAgent(4, 1).to(device)
            self.beta_critic = LinearCritic(4, 1).to(device)
            self.beta_policy_optimizer = torch.optim.Adam(self.beta_policy.parameters(), lr=lr)
            self.beta_critic_optimizer = torch.optim.Adam(self.beta_critic.parameters(), lr=lr)
        elif FLAGS.beta_net.startswith('fix-'):
            def _f(*args, **kwargs):
                return float(FLAGS.beta_net.strip('fix-'))
            self.beta_policy = _f
        else:
            raise Exception(FLAGS.beta_net)

        self.model = MnistMlp().to(device)
        self.optimizer = torch.optim.Adam(self.model.parameters(), lr=lr)
        self.peer_model = MnistMlp().to(device)

        # Model & Log Outputs
        self.beta_fp = "./betas/agent_{}/".format(aid)
        if FLAGS.beta_net == 'ddpg':
            self.beta_critic_fp = "./beta-critic/agent_{}/".format(aid)
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
        self.peer_id = None

    def save_models(self, eps):
        if FLAGS.beta_net == 'classify':
            torch.save(self.beta_policy.state_dict(), self.beta_fp + "episode_{}.pt".format(eps))
        elif FLAGS.beta_net == 'ddpg':
            torch.save(self.beta_policy.state_dict(), self.beta_fp + "episode_{}.pt".format(eps))
            torch.save(self.beta_critic.state_dict(), self.beta_critic_fp + "eposide_{}.pt".format(eps))
        torch.save(self.model.state_dict(), self.model_fp + "episode_{}.pt".format(eps))

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
        loss = 0
        labels = []
        preds = []
        with torch.set_grad_enabled(self.combine_grad):
            for data, label in tqdm(dataloader, desc=f"{self.id} Evaluating", leave=False):
                pred = model(data.to(self.device))
                loss += torch.nn.functional.cross_entropy(pred, label.to(self.device))
                labels.append(label)
                preds.append(pred)

            labels = torch.cat(labels)
            preds = torch.argmax(torch.cat(preds), dim=1)
            auc = metrics.f1_score(labels.cpu().numpy(), preds.detach().cpu().numpy(), average='macro')

            if model is self.model:
                self.local_auc_history.append(auc)

        return auc, loss

    def local_step(self, steps=1):
        # Train `steps` local step on the model
        total_loss = 0
        if not self.dumb:
            self.model.train()
            for i, (data, label) in tqdm(enumerate(self.dataloader), total=steps, desc=f"{self.id} Training", leave=False):
                if i >= steps:
                    break
                pred = self.model(data.to(self.device))
                loss = torch.nn.functional.cross_entropy(pred, label.to(self.device))
                total_loss += loss.item()

                self.optimizer.zero_grad()
                loss.backward()
                self.optimizer.step()
        return total_loss / steps

    def update_peer_accs(self, oid, pacc):
        # Update peer_accs
        for pid in self.peer_ages.keys():
            self.peer_ages[pid] += 1
        self.peer_accs[oid] = pacc
        self.peer_ages[oid] = 0

    def stage1_comm_model(self, other):
        # logging.debug('stage 1')
        # Transmit and receive models to start interaction
        # Make a copy of the other's model
        self.peer_model.load_state_dict(other.model.state_dict())
        other.peer_model.load_state_dict(self.model.state_dict())
        self.peer_id = other.id
        other.peer_id = self.id

    def stage2_eval_peer(self, other):
        # logging.debug('stage 2')
        # Evaluate peer model locally (to compute accuracy & gradient)
        self.peer_acc, self.peer_loss = self.evaluate(self.peer_model, self.dataloader)
        other.peer_acc, other.peer_loss = other.evaluate(other.peer_model, other.dataloader)

    def stage3_comm_accs(self, other):
        # logging.debug('stage 3')
        # Transmit and receive model accuracies
        self.my_other_acc = other.peer_acc
        other.my_other_acc = self.peer_acc
        self.update_peer_accs(other.id, self.my_other_acc)
        other.update_peer_accs(self.id, other.my_other_acc)

    def stage4_comm_rpeer(self, other):
        # logging.debug('stage 4')
        # Communicate rpeer values
        self.other_rpeer = other.calculate_rpeer()
        other.other_rpeer = self.calculate_rpeer()

    def stage5_local_updates(self, other, round):
        logging.debug('stage 5')
        if not self.dumb:
            self.stage5_helper(round)
        if not other.dumb:
            other.stage5_helper(round)

    def stage5_helper(self, round):
        """Given results of first 4 stages, update local model"""
        # Evaluate on local data
        self.local_auc, self.loss = self.evaluate(self.model, self.dataloader)

        # Calculate beta value
        policy = self.beta_policy(self.local_auc, self.peer_acc, self.calculate_rpeer(), self.other_rpeer, device=self.device)
        if FLAGS.beta_net == 'classify':
            beta = np.random.choice(self.beta_action, p=policy.detach().cpu().numpy())
        elif FLAGS.beta_net == 'ddpg':
            beta = policy
            # beta = torch.tensor(1, device=self.device).float()
        else:
            beta = policy

        # Calculate gradient of peer model on local data (already done in stage 2)

        # Combine models
        # Approach 1: combine gradients with beta-weight
        #assert not self.combine_grad
        if self.combine_grad:
            self.optimizer.zero_grad()
            self.loss.backward()
            self.peer_loss.backward()
            for local_param, peer_param in zip(self.model.parameters(), self.peer_model.parameters()):
                if local_param.grad == None: continue
                if peer_param.grad == None: continue
                local_param.grad = local_param.grad * beta + peer_param.grad * (1 - beta)
            self.optimizer.step()  # 1-step of learning from gradient

        # Approach 2: combine model parameters with beta-weight
        else:
            state = self.model.state_dict()
            peer_state = self.peer_model.state_dict()
            for layer in state:
                state[layer] = state[layer] * beta.detach() + peer_state[layer] * (1 - beta.detach())
            self.model.load_state_dict(state)

        '''Update beta network'''
        # train beta using self.calculate_total_reward()
        if FLAGS.cheat:
            reward = self.evaluate(self.model, self.cheat_dataloader)[0]
        else:
            reward = self.alpha * self.local_auc + (1 - self.alpha) * self.calculate_rpeer()
        assert 0 <= reward <= 1
        if FLAGS.beta_net == 'classify':
            beta_id = np.where(self.beta_action == beta)[0]
            logging.debug('beta id {} beta {}'.format(beta_id, beta))
            action_onehot = F.one_hot(torch.tensor(beta_id), self.beta_num).to(self.device)
            beta_loss = -torch.sum(torch.log(torch.clip(action_onehot * policy, 1e-10, 1.0)) * reward)
            self.beta_optimizer.zero_grad()
            beta_loss.backward()
            self.beta_optimizer.step()

            # log data
            if FLAGS.wandb:
                wandb.log({f'comm/beta-{self.id}-{self.peer_id}': beta,
                           f'comm_loss/beta_loss-{self.id}-{self.peer_id}': beta_loss,
                           f'comm_r/reward_{self.id}': reward}, commit=False)
        elif FLAGS.beta_net == 'ddpg':
            logging.debug('agent {} peer beta {}'.format(self.id, beta))
            logging.debug('{} {} {} {}'.format(self.local_auc, self.peer_acc, self.calculate_rpeer(), self.other_rpeer))

            # Update critic
            reward_predict = self.beta_critic(
                    self.local_auc, self.peer_acc, self.calculate_rpeer(),
                    self.other_rpeer, beta.detach(), device=self.device)
            beta_critic_loss = (reward_predict - reward)**2
            logging.debug('agent {} critic loss {:.5f}'.format(self.id, beta_critic_loss.item()))
            self.beta_critic_optimizer.zero_grad()
            beta_critic_loss.backward()
            self.beta_critic_optimizer.step()

            # Update actor
            beta_loss = -self.beta_critic(self.local_auc, self.peer_acc,
                    self.calculate_rpeer(), self.other_rpeer, beta, device=self.device)
            logging.debug('agent {} beta loss {:.5f}'.format(self.id, beta_loss.item()))
            self.beta_policy_optimizer.zero_grad()
            beta_loss.backward()
            self.beta_policy_optimizer.step()

            # log data
            if FLAGS.wandb:
                wandb.log({f'comm/beta-{self.id}-{self.peer_id}': beta.item(),
                           f'comm_loss/beta_loss-{self.id}-{self.peer_id}': beta_loss.item(),
                           f'comm_loss/beta_critic_loss-{self.id}-{self.peer_id}': beta_critic_loss.item(),
                           f'comm_r/reward_{self.id}': reward}, commit=False)
        else:
            # log data
            if FLAGS.wandb:
                logging.debug('agent {} peer beta {}'.format(self.id, beta))
                logging.debug('{} {} {} {}'.format(self.local_auc, self.peer_acc, self.calculate_rpeer(), self.other_rpeer))
                if FLAGS.wandb:
                    wandb.log({f'comm/beta-{self.id}-{self.peer_id}': beta,
                               f'comm_r/reward_{self.id}': reward}, commit=False)
