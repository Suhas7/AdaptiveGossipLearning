import torch
import torch.nn as nn
import torch.nn.functional as F

class LinearPolicy(torch.nn.Module):
    def __init__(self, input_dim, action_num):
        super(BetaPolicy, self).__init__()
        self.linear = torch.nn.Linear(input_dim, action_num)

    def forward(self, local_auc, peer_acc, calculate_rpeer, other_rpeer, device='cpu'):
        x = torch.tensor([local_auc, peer_acc, calculate_rpeer, other_rpeer]).float().to(device)
        output = torch.softmax(self.linear(x), dim=-1)
        return output

class LinearCritic(nn.Module):
    def __init__(self, input_dim, action_num):
        super().__init__()
        self.linear = nn.Linear(input_dim + action_num, 1)

    def forward(self, local_auc, peer_acc, calculate_rpeer, other_rpeer, beta_val, device='cpu'):
        x = torch.tensor([local_auc, peer_acc, calculate_rpeer, other_rpeer]).float().to(device)
        x = torch.cat([x, beta_val])

        # squash it to [0, 1]
        q_value = torch.softmax(self.linear(x))

        return q_value
