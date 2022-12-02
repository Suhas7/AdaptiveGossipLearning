from absl import flags
from typing import List

from dataclasses import dataclass
import numpy as np
import numpy.typing as npt

from random import seed


FLAGS = flags.FLAGS
flags.DEFINE_integer('num_agents', None, lower_bound=1, help='')
flags.mark_flag_as_required('num_agents')
flags.DEFINE_integer('num_dumb', 0, lower_bound=0, help='')
flags.DEFINE_integer('nskew', 10, lower_bound=0, help='')
flags.DEFINE_integer('topweight', 1, lower_bound=1, help='')
flags.DEFINE_integer('baseweight', 1, lower_bound=0, help='')
flags.DEFINE_integer('num_class', 10, lower_bound=1, help='')
flags.DEFINE_integer('seed', 0, help='')

@dataclass
class AgentConfig:
    alphas: npt.NDArray[np.float_]
    sigmas: npt.NDArray[np.float_]
    dists: List[npt.NDArray[np.float_]]
    start_coords: List[tuple]
    dummy: List[bool]


'''Create a distribution where N classes have topweight, the rest have baseweight'''
def _gen_nclass(N, baseweight, topweight):
    assert topweight >= baseweight
    if N == 0:
        N = FLAGS.nskew
    norm = N*topweight + (FLAGS.num_class-N)*baseweight
    w = np.ones(FLAGS.num_class)
    tops = np.random.choice(FLAGS.num_class, size=N, replace=False)
    w[tops] = topweight
    w /= norm
    return w


'''
distributions: 2-d numpy arrays
entry: [no. agent, N, baseweight, topweight]
if N = 0: create dummy agent that doesn't learn
'''
def gen_distribution(distributions=None):
    assert distributions is None or np.sum(distributions[:, 0]) == FLAGS.num_agents
    if distributions is None:
        distributions = np.array([[FLAGS.num_agents, 3, 1, 5]])
    weights, dummy = [], []
    for d in distributions:
        for i in range(d[0]):
            weights.append(_gen_nclass(d[1], d[2], d[3]))
            dummy.append(d[1] == 0)
    with open(f'{FLAGS.logdir}/class_distribution.txt', 'w') as f:
        for i, w in enumerate(weights):
            print(f'Agent {i}, {"dumb" if dummy[i] else "smart"}', end=' ', file=f)
            print([f'{i:.3f}' for i in w.tolist()], file=f)

    return AgentConfig(
        alphas=0.5 * np.ones(FLAGS.num_agents),
        sigmas=0.5 * np.ones(FLAGS.num_agents),
        dists=weights,
        start_coords=[(0, 0) for _ in range(FLAGS.num_agents)],
        dummy=dummy
    )

def getAgentConfig():
    seed(FLAGS.seed)
    np.random.seed(FLAGS.seed)
    
    distr = np.array([[FLAGS.num_agents-FLAGS.num_dumb, FLAGS.nskew, FLAGS.baseweight, FLAGS.topweight],  # good
                      [FLAGS.num_dumb, 0, FLAGS.baseweight, FLAGS.topweight]])  # dumb
    return gen_distribution(distr)
