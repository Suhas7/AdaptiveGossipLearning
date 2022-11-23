import torch
import torch.nn as nn
import torch.nn.functional as F

class LinearPolicy(torch.nn.Module):
    def __init__(self, input_dim, action_num):
        super().__init__()
        self.linear = nn.Sequential(
                nn.Linear(input_dim, input_dim),
                nn.Tanh(),
                nn.Linear(input_dim, action_num),
                nn.Sigmoid()
            )

    def forward(self, local_auc, peer_acc, calculate_rpeer, other_rpeer, device='cpu'):
        x = torch.tensor([local_auc, peer_acc, calculate_rpeer, other_rpeer]).float().to(device)
        return self.linear(x)

class LinearCritic(nn.Module):
    def __init__(self, input_dim, action_num):
        super().__init__()

        self.linear = nn.Sequential(
                nn.Linear(input_dim + action_num, input_dim + action_num),
                nn.Tanh(),
                nn.Linear(input_dim + action_num, 1),
                nn.Sigmoid()
            )

    def actor_forward(self, local_auc, peer_acc, calculate_rpeer, other_rpeer, beta_val, device='cpu'):
        x = torch.tensor([local_auc, peer_acc, calculate_rpeer, other_rpeer]).float().to(device)
        x = torch.cat([x, beta_val])

        return self.linear(x)
    def forward(self, x, device='cpu'):
        x = x.to(device)
        return self.linear(x)
