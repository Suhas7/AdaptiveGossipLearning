import torch
import torch.nn as nn
import torch.nn.functional as F

class BetaPolicy(torch.nn.Module):
	def __init__(self, input_dim, action_num):
		super(BetaPolicy, self).__init__()
		self.linear = torch.nn.Linear(input_dim, action_num)

	def forward(self, local_auc, peer_acc, calculate_rpeer, other_rpeer, device='cpu'):
		x = torch.tensor([local_auc, peer_acc, calculate_rpeer, other_rpeer]).float().to(device)
		output = torch.softmax(self.linear(x), dim=-1)
		return output

class BetaAgent(nn.Module):
    def __init__(self, input_dim, action_dim):
        super().__init__()
        self.linear = nn.Linear(input_dim, action_dim)

    def forward(self, local_auc, peer_acc, calculate_rpeer, other_rpeer, device='cpu'):
        x = torch.tensor([local_auc, peer_acc, calculate_rpeer, other_rpeer]).float().to(device)
        # squash it to [0, 1]
        output = (F.tanh(self.linear(x)) + 1) / 2
        return output

class BetaCritic(nn.Module):
    def __init__(self, input_dim, action_num):
        super().__init__()
        self.linear = nn.Linear(input_dim + action_num, 1)

    def forward(self, local_auc, peer_acc, calculate_rpeer, other_rpeer, beta_val, device='cpu'):
        x = torch.tensor([local_auc, peer_acc, calculate_rpeer, other_rpeer, beta_val]).float().to(device)

        # squash it to [0, 1]
        q_value = (F.tanh(self.linear(x)) + 1) / 2

        return q_value
