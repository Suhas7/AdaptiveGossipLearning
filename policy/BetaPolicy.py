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

    def forward(self, x):
        return self.linear(x)

class LinearCritic(nn.Module):
    def __init__(self, input_dim, action_num):
        super().__init__()

        self.linear = nn.Sequential(
                nn.Linear(input_dim, input_dim),
                nn.Tanh(),
                nn.Linear(input_dim, action_num),
                nn.Sigmoid()
            )

    def actor_forward(self, x, beta):
        x = torch.cat([x, beta], dim=1)
        return self.linear(x)

    def forward(self, x):
        return self.linear(x)
