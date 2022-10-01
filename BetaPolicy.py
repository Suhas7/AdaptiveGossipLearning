import torch

class BetaPolicy(torch.nn.Module):
	def __init__(self, input_dim):
		super(BetaPolicy,self).__init__()
		self.linear = torch.nn.Linear(input_dim, 1)

	def forward(self,x):
		output = torch.sigmoid(self.linear(x))
		return output