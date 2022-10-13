from absl import app
from absl import flags
from Driver import Driver
from sklearn import metrics
from data_distribution import fetch_mnist_data
import matplotlib.pyplot as plt
import numpy as np

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

	# Run environment
	for _ in range(FLAGS.num_env_steps):
		driver.env_step()
		# Test each agent model against test dataset
		for id, agent in driver.agents.items():
			aucs[id].append(np.mean([metrics.roc_auc_score(label, agent.model(data)) for id, (data, label) in full_test]))
	
	print(aucs)
	x = np.arange(FLAGS.num_env_steps)
	y = aucs[0]
	plt.plot(x,y)
	plt.save("Agent 0 Curve")
	plt.show()
	

if __name__ == '__main__':
	app.run(main)