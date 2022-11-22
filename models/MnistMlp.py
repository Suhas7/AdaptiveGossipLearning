import torch
import torch.nn as nn

class MnistMlp(nn.Module):
    def __init__(self):
        super().__init__()
        self.fc = nn.Sequential(
                nn.Linear(784, 120),
                nn.ReLU(),
                nn.Linear(120, 84),
                nn.ReLU(),
                nn.Linear(84, 10)
            )

    def forward(self, x):
        x = torch.flatten(x, start_dim=1)
        return self.fc(x)