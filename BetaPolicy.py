import torch

class BetaPolicy(torch.nn.Module):
	def __init__(self):
		super(BetaPolicy,self).__init__()
		self.linear = torch.nn.Linear(4,1)

	def forward(self,x):
		output = torch.sigmoid(self.linear(x))
		return output