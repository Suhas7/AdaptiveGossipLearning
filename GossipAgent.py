import math

import numpy as np
import torch
import torch.nn.functional as F
import wandb
from torch.utils.data import DataLoader
from absl import logging, flags
from tqdm import tqdm
import pickle as pk

from policy import LinearCritic, LinearPolicy
from models import MnistMlp
from sklearn import metrics
from supervised_learner import nnBeta

FLAGS = flags.FLAGS
flags.DEFINE_string('beta_net', 'classify', help='')
flags.DEFINE_bool('oracle', True, help='')
flags.DEFINE_bool('vector_rp', True, help='')
flags.DEFINE_string('sldir', '.', help='')

'''
scope: self
    local_auc: my auc on my data       ->  MAMD
    peer_auc: peer's auc on my data    ->  YAMD
    other_auc: peer auc on their data  ->  YAYD
    my_other_auc: my auc on their data ->  MAYD
'''

class GossipAgent:
    def __init__(self, aid, dataset, alpha=.5, sigma=.8, beta_num=11,
                 coord=[0,0], lr=1e-2, combine_grad=False, device='cpu', dummy=False, oracle_data=None,
                 dist=None, local_step_freq=1):
        # Agent metadata and hyper-parameters
        self.id = aid
        self.alpha = alpha
        self.sigma = sigma
        self.dist = dist
        self.dumb = dummy
        self.local_step_freq = local_step_freq
        self.beta_lr = lr
        self.default_lr = lr
        self.classifier_lr = lr
        self.decay = .98

        self.ob_history = 1
        self.buffer = []

        self.dataset = dataset
        self.dataloader = DataLoader(self.dataset, batch_size=64, shuffle=True)

        logging.info(f'agent {self.id} data size {len(dataset)}')
        logging.info(f'agent {self.id} step per epoch {len(self.dataloader)}')

        self.device = device

        self.oracle_data = oracle_data
        self.oracle_dataloader = DataLoader(oracle_data, batch_size=256, shuffle=False)

        # Import agent model, both for prediction and beta policy
        if FLAGS.beta_net == 'classify':
            self.beta_num = beta_num  # Number of discrete beta values to choose from
            self.beta_policy = LinearPolicy(4*self.ob_history, beta_num).to(device)
            self.beta_action = np.linspace(0, 1, beta_num)
            self.beta_optimizer = torch.optim.Adam(self.beta_policy.parameters(), lr=lr)
        elif FLAGS.beta_net == 'ddpg':
            self.beta_policy = LinearPolicy(5*self.ob_history-1, 1).to(device)
            self.beta_critic = LinearCritic(5*self.ob_history, 1).to(device)
            self.beta_policy_optimizer = torch.optim.Adam(self.beta_policy.parameters(), lr=lr)
            self.beta_critic_optimizer = torch.optim.Adam(self.beta_critic.parameters(), lr=lr)
        elif FLAGS.beta_net.startswith('fix-'):
            def _f(*args, **kwargs):
                return float(FLAGS.beta_net.strip('fix-'))
            self.beta_policy = _f
        elif FLAGS.beta_net.startswith('cheat-') or FLAGS.beta_net == "heuristic":
            def _f(*args, **kwargs):
                return 0
            self.beta_policy = _f
        elif FLAGS.beta_net.startswith('pretrain-'):
            model_name = FLAGS.sldir + '/' + FLAGS.beta_net.lstrip('pretrain-') + '.pkl'
            with open(model_name,'rb') as fp:
                self.beta_policy = pk.load(fp)
        else:
            raise Exception(FLAGS.beta_net)

        self.model = MnistMlp().to(device)
        self.optimizer = torch.optim.Adam(self.model.parameters(), lr=self.classifier_lr)
        self.peer_model = MnistMlp().to(device)

        # Model & Log Outputs
        self.beta_fp = "./betas/agent_{}/".format(aid)
        if FLAGS.beta_net == 'ddpg':
            self.beta_critic_fp = "./beta-critic/agent_{}/".format(aid)
        self.model_fp = "./models/agent_{}/".format(aid)
        self.log_fp = "./logs/agent_{}/".format(aid)
        if aid == 0:
            with open(FLAGS.logdir + '/data.csv', 'w') as fp:
                fp.write("")

        # Allocate reward structures
        self.MAMD = 0
        self.loss = 0
        self.peer_loss = 0
        self.YAMDs = dict()
        self.peer_ages = dict()
        self.peer_idmap = dict()
        self.combine_grad = combine_grad
        self.MAMD_history = []
        self.peer_id = None

    def save_models(self, eps):
        if FLAGS.beta_net == 'classify':
            torch.save(self.beta_policy.state_dict(), self.beta_fp + "episode_{}.pt".format(eps))
        elif FLAGS.beta_net == 'ddpg':
            torch.save(self.beta_policy.state_dict(), self.beta_fp + "episode_{}.pt".format(eps))
            torch.save(self.beta_critic.state_dict(), self.beta_critic_fp + "episode_{}.pt".format(eps))
        torch.save(self.model.state_dict(), self.model_fp + "episode_{}.pt".format(eps))

    def calculate_total_reward(self):
        return self.MAMD + self.calculate_rpeer()

    def calculate_rpeer(self):
        result = 0
        denom = 0
        for key in self.YAMDs.keys():
            scale = (self.sigma ** self.peer_ages[key])
            denom += scale
            result += self.YAMDs[key]*scale
        if denom == 0:
            if not FLAGS.vector_rp:
                return 0
        return result / denom

    def calculate_rpeer_vec(self):
        result = 0
        denom = 0
        for key in self.YAMDs.keys():
            scale = (self.sigma ** self.peer_ages[key])
            denom += scale
            result += self.YAMDs[key]*scale
        if denom == 0:
            if not FLAGS.vector_rp:
                return 0
        return result / denom

    def evaluate(self, model, dataloader, vector=False):
        # TODO: add option to sample from dataset to evaluate model
        model.eval()
        loss = 0
        labels = []
        preds = []
        with torch.set_grad_enabled(self.combine_grad):
            found = set()
            for data, label in tqdm(dataloader, desc=f"{self.id} Evaluating", leave=False):
                pred = model(data.to(self.device))
                loss += torch.nn.functional.cross_entropy(pred, label.to(self.device))
                labels.append(label)
                for lab in label.tolist():
                    found.add(lab)
                preds.append(pred)
            
            missing = list()
            for i in range(FLAGS.num_class):
                if i not in found: 
                    missing.append(i)
            missing = torch.as_tensor(missing)
            labels.append(missing)
            labels = torch.cat(labels)
            preds.append((missing+1) % FLAGS.num_class)
            print(labels)
            print(preds)
            preds = torch.argmax(torch.cat(preds), dim=1)
            auc = metrics.f1_score(labels.cpu().numpy(), preds.detach().cpu().numpy(),
                                   average = None if vector else 'macro')

            if model is self.model:
                self.MAMD_history.append(auc)

        return auc, loss

    def decay_lr(self):
        self.classifier_lr *= self.decay
        self.classifier_lr = max(self.classifier_lr, self.default_lr/100)
        self.optimizer = torch.optim.Adam(self.model.parameters(), lr=self.classifier_lr)

    def local_step(self, steps=1, model=None):
        # Train `steps` local step on the model
        total_loss = 0
        if model is None:
            model = self.model
            optim = self.optimizer
        else:
            lr = self.classifier_lr * self.decay if FLAGS.decay_lr else self.classifier_lr
            optim = torch.optim.Adam(model.parameters(), lr=lr)
        if not self.dumb:
            model.train()
            for i, (data, label) in tqdm(enumerate(self.dataloader), total=steps, desc=f"{self.id} Training", leave=False):
                if i >= steps:
                    break
                pred = model(data.to(self.device))
                loss = torch.nn.functional.cross_entropy(pred, label.to(self.device))
                total_loss += loss.item()

                optim.zero_grad()
                loss.backward()
                optim.step()
        return total_loss / steps

    def update_YAMDs(self, oid, pacc):
        # Update YAMDs
        for pid in self.peer_ages.keys():
            self.peer_ages[pid] += 1
        self.YAMDs[oid] = pacc
        self.peer_ages[oid] = 0

    def stage1_comm_model(self, other):
        # logging.debug('stage 1')
        # Evaluate yourself
        self.MAMD, self.loss = self.evaluate(self.model, self.dataloader)
        other.MAMD, other.loss = other.evaluate(other.model, other.dataloader)
        self.YAYD = other.MAMD
        other.YAYD = self.MAMD
        self.other_dist = other.dist
        other.other_dist = self.dist
        # Transmit and receive models to start interaction
        # Make a copy of the other's model
        self.peer_model.load_state_dict(other.model.state_dict())
        other.peer_model.load_state_dict(self.model.state_dict())
        self.peer_id = other.id
        other.peer_id = self.id

    def stage2_eval_peer(self, other):
        # logging.debug('stage 2')
        # Evaluate peer model locally (to compute accuracy & gradient)
        self.YAMD, self.peer_loss = self.evaluate(self.peer_model, self.dataloader,      vector=FLAGS.vector_rp)
        other.YAMD, other.peer_loss = other.evaluate(other.peer_model, other.dataloader, vector=FLAGS.vector_rp)

    def stage3_comm_aucs(self, other):
        # logging.debug('stage 3')
        # Transmit and receive model accuracies
        self.MAYD = other.YAMD
        other.MAYD = self.YAMD
        self.update_YAMDs(other.id, self.MAYD)
        other.update_YAMDs(self.id, other.MAYD)

    def stage4_comm_rpeer(self, other):
        # logging.debug('stage 4')
        # Communicate rpeer values
        self.other_rpeer = other.calculate_rpeer()
        other.other_rpeer = self.calculate_rpeer()

    def stage5_local_updates(self, other):
        logging.debug('stage 5')
        if not self.dumb:
            self.stage5_helper()
        if not other.dumb:
            other.stage5_helper()

    def eval_beta(self, beta):
        state = self.model.state_dict()
        peer_state = self.peer_model.state_dict()
        for layer in state:
            state[layer] = state[layer] * beta + peer_state[layer] * (1 - beta)
        composite_model = MnistMlp().to(self.device)
        composite_model.load_state_dict(state)
        # Take a local step with the composite model
        self.local_step(self.local_step_freq, model=composite_model)
        # Compute and return AUC on oracle dataset
        return self.evaluate(composite_model, self.oracle_dataloader)[0]

    def get_state(self):
        if not FLAGS.vector_rp:
            return [self.id, self.MAMD, self.YAMD, self.calculate_rpeer(), self.other_rpeer]
        else:
            #Vector state is: concat(my_auc_on_my_data - your_auc_on_my_data, \
             #my_auc_on_your_data - your_auc_on_your_data, my_dist-your_dist)
            return [self.id] \
                   + list(self.MAMD - self.YAMD) \
                   + list(self.YAYD - self.MAYD) \
                   + list(self.dist - self.other_dist) \
                   + [self.classifier_lr]

    def stage5_helper(self):
        """Given results of first 4 stages, update local model"""
        # Calculate beta value
        if len(self.buffer) < self.ob_history-1:
            action = torch.rand(1).squeeze(0) / 10
        elif not FLAGS.vector_rp:
            if self.ob_history > 1:
                x = torch.concat([torch.tensor(ob) for ob, _ in self.buffer[-self.ob_history+1:]])
                x = torch.concat([x, torch.tensor((self.MAMD, self.YAMD, self.calculate_rpeer(), self.other_rpeer))]).float().to(self.device)
            else:
                x = torch.concat([torch.tensor((self.MAMD, self.YAMD, self.calculate_rpeer(), self.other_rpeer))]).float().to(self.device)
            action = self.beta_policy(x)

        if FLAGS.beta_net == 'classify':
            beta = np.random.choice(self.beta_action, p=action.detach().cpu().numpy())
        elif FLAGS.beta_net == 'ddpg':
            beta = action.item()
            # beta = torch.tensor(1, device=self.device).float()
        elif FLAGS.beta_net == 'heuristic':
            beta = .5*(1+self.calculate_rpeer()-self.other_rpeer)
            beta = float(beta.mean())
        elif FLAGS.beta_net.startswith('cheat-'):
            step = float(FLAGS.beta_net.strip('cheat-'))
            n = math.floor(1 / step) + 1
            candidate = np.arange(n) * step
            look_ahead = list(map(self.eval_beta, candidate.tolist()))
            beta = candidate[np.argmax(look_ahead)]

            # beta = max(candidate, key=lambda b: self.eval_beta(b))
            # Append state, beta onto "data.csv" for future regression
            with open(FLAGS.logdir + '/data.csv', 'a') as fp:
                state = self.get_state()
                state.append(beta)
                s = ",".join(map(str, state)) + "\n"
                fp.write(s)
        elif FLAGS.beta_net.startswith('pretrain-'):
            state = np.array(self.get_state())[1:].reshape(1, -1)
            beta = self.beta_policy.predict(state)  # TODO test to make sure this is correct
            beta = float(beta)
            logging.debug(f'agent {self.id} beta {beta}')
        else:
            beta = self.beta_policy()
            logging.debug(f'agent {self.id} beta {beta}')

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
                local_param.grad = torch.clip(local_param.grad, -1, 1)
            self.optimizer.step()  # 1-step of learning from gradient

        # Approach 2: combine model parameters with beta-weight
        else:
            state = self.model.state_dict()
            peer_state = self.peer_model.state_dict()
            for layer in state:
                state[layer] = state[layer] * beta + peer_state[layer] * (1 - beta)
            self.model.load_state_dict(state)

        '''Update beta network'''
        # train beta using self.calculate_total_reward()
        #reward = self.evaluate(self.model, self.oracle_dataloader)[0]
        reward = self.alpha * self.MAMD + (1 - self.alpha) * self.calculate_rpeer()

        self.buffer.append(((self.MAMD, self.YAMD, self.calculate_rpeer(), self.other_rpeer, beta), reward))

        if FLAGS.beta_net == 'classify':
            beta_id = np.where(self.beta_action == beta)[0]
            logging.debug('beta id {} beta {}'.format(beta_id, beta))
            action_onehot = F.one_hot(torch.tensor(beta_id), self.beta_num).to(self.device)
            beta_loss = -torch.sum(torch.log(torch.clip(action_onehot * action, 1e-10, 1.0)) * reward)
            self.beta_optimizer.zero_grad()
            beta_loss.backward()
            self.beta_optimizer.step()

            # log data
            if FLAGS.wandb and not self.dumb:
                wandb.log({f'comm/beta-{self.id}-{self.peer_id}': beta,
                           f'comm_loss/beta_loss-{self.id}-{self.peer_id}': beta_loss,
                           f'comm_r/reward_{self.id}': reward}, commit=False)
        elif FLAGS.beta_net == 'ddpg':
            logging.debug('agent {} peer beta {}'.format(self.id, beta))
            logging.debug(f'agent {self.id} MAMD {self.MAMD:.5f} MAYD {self.MAYD:.5f} r_feedback(self) {self.calculate_rpeer():.5f} r_feedback(other) {self.other_rpeer:.5f}')

            def _concat_ob(obs):
                # X, y
                return torch.concat([torch.tensor(ob) for ob, _ in obs]).float().to(self.device), obs[-1][1]

            def _sample_obs(sample_size):
                batch_idx = np.random.choice(len(self.buffer)-self.ob_history+1, size=min(len(self.buffer)-self.ob_history+1, sample_size), replace=False)
                batch = [_concat_ob(self.buffer[idx:idx+self.ob_history]) for idx in batch_idx]
                batch_x = torch.stack([b[0] for b in batch]).float()
                batch_y = torch.tensor([b[1] for b in batch]).float().to(self.device)

                return batch_x, batch_y

            # Update actor
            if len(self.buffer) >= self.ob_history:
                for _ in range(5):
                    batch_size = 8
                    batch_x, batch_y = _sample_obs(batch_size)
                    action = self.beta_policy(batch_x[:, :-1])
                    beta_loss = -self.beta_critic.actor_forward(batch_x[:, :-1], action).mean()

                    logging.debug('agent {} beta action {} beta loss {:.5f}'.format(self.id, action[-1].item(), beta_loss.item()))
                    self.beta_policy_optimizer.zero_grad()
                    beta_loss.backward()
                    self.beta_policy_optimizer.step()

            # Update critic
            if len(self.buffer) >= self.ob_history:
                for _ in range(5):
                    batch_size = 16
                    batch_x, batch_y = _sample_obs(batch_size)

                    reward_pred = self.beta_critic(batch_x).flatten()
                    beta_critic_loss = F.mse_loss(reward_pred, batch_y)
                    logging.debug('agent {} critic loss {:.5f}'.format(self.id, beta_critic_loss.item()))
                    self.beta_critic_optimizer.zero_grad()
                    beta_critic_loss.backward()
                    self.beta_critic_optimizer.step()

            # log data
            if FLAGS.wandb and not self.dumb:
                wandb.log({f'comm/beta-{self.id}-{self.peer_id}': beta,
                           f'comm_loss/beta_loss-{self.id}-{self.peer_id}': beta_loss.item(),
                           f'comm_loss/beta_critic_loss-{self.id}-{self.peer_id}': beta_critic_loss.item(),
                           f'comm_r/reward_{self.id}': reward}, commit=False)
        else:
            # log data
            if FLAGS.wandb and not self.dumb:
                logging.debug('agent {} peer beta {}'.format(self.id, beta))
                logging.debug('{} {} {} {}'.format(self.MAMD, self.YAMD, self.calculate_rpeer(), self.other_rpeer))
                if FLAGS.wandb:
                    wandb.log({f'comm/beta-{self.id}-{self.peer_id}': beta}, commit=False)
