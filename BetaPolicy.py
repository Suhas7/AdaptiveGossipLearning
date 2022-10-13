import torch

class BetaPolicy(torch.nn.Module):
	def __init__(self, input_dim, action_num):
		super(BetaPolicy, self).__init__()
		self.linear = torch.nn.Linear(input_dim, action_num)

	def forward(self, local_auc, peer_acc, calculate_rpeer, other_rpeer):
		x = torch.tensor([local_auc, peer_acc, calculate_rpeer, other_rpeer]).float()
		output = torch.softmax(self.linear(x), dim=-1)
		return output
