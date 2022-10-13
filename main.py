from absl import app
from absl import flags, logging
from Driver import Driver
from sklearn import metrics
from data_distribution import fetch_mnist_data
import matplotlib.pyplot as plt
import numpy as np
from torch.utils.data import DataLoader

logging.set_verbosity(logging.DEBUG)

FLAGS = flags.FLAGS

flags.DEFINE_integer('num_env_steps', None, lower_bound=2, help='')
flags.mark_flag_as_required('num_env_steps')
flags.DEFINE_integer('n_train_img', 1000, lower_bound=2, help='')

def main(argv):
	driver = Driver(
		num_agents		= FLAGS.num_agents, 
		agent_info_mode	= FLAGS.agent_info_mode, 
		local_step_freq	= FLAGS.local_step_freq,
		n_train_img 	= FLAGS.n_train_img
	)

	# Dictionary to store performance at each step
	aucs = dict()
	for id in driver.agents.keys():
		aucs[id] = list()

	# Fetch test dataset
	_, full_test = fetch_mnist_data()
	test_dataloader = DataLoader(full_test, batch_size=64, shuffle=True)

	# Run environment
	for i in range(FLAGS.num_env_steps):
		logging.debug("Beginning env_step {}".format(i))
		driver.env_step()
		logging.debug("Env step #%d",i)
		# Test each agent model against test dataset
		for id, agent in driver.agents.items():
			aucs[id].append(agent.evaluate(agent.model, test_dataloader)[0])
	
	print(aucs)
	x = np.arange(FLAGS.num_env_steps)
	y = aucs[0]
	plt.plot(x,y)
	plt.savefig("Agent 0 Curve")
	plt.show()
	

if __name__ == '__main__':
	app.run(main)