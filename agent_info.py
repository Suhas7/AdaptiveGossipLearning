from absl import flags

from dataclasses import dataclass
import numpy as np
import numpy.typing as npt

FLAGS = flags.FLAGS
flags.DEFINE_integer('num_agents', None, lower_bound=1)
flags.mark_flag_as_required('num_agents')
flags.DEFINE_integer('num_labels', None, lower_bound=1)
flags.mark_flag_as_required('num_labels')

@dataclass
class AgentConfig:
	alphas: npt.NDArray[np.float_]
	sigmas: npt.NDArray[np.float_]
	dists: list[npt.NDArray[np.float_]]
	start_coords: list[tuple]

def getAgentConfig(mode):
	if mode == 'default':
		return AgentConfig(
			alphas=0.5*np.ones(FLAGS.num_agents),
			sigmas=0.5*np.ones(FLAGS.num_agents),
			dists=[np.ones(FLAGS.num_labels)/FLAGS.num_labels for _ in range(FLAGS.num_agents)],
			start_coords=[(0,0) for _ in range(FLAGS.num_agents)])
	else:
		raise NotImplementedError(f"agent_info mode not implemented {mode}")