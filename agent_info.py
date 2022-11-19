from absl import flags
from typing import List

from dataclasses import dataclass
import numpy as np
import numpy.typing as npt

from random import seed
seed(0)
np.random.seed(0)


FLAGS = flags.FLAGS
flags.DEFINE_integer('num_agents', None, lower_bound=1, help='')
flags.mark_flag_as_required('num_agents')
flags.DEFINE_integer('num_class', None, lower_bound=1, help='')
flags.mark_flag_as_required('num_class')

@dataclass
class AgentConfig:
    alphas: npt.NDArray[np.float_]
    sigmas: npt.NDArray[np.float_]
    dists: List[npt.NDArray[np.float_]]
    start_coords: List[tuple]
    dummy: List[bool]


'''Create a distribution where N classes have topweight, the rest have baseweight'''
def _gen_nclass(N, baseweight, topweight):
    if N == 0:
        return np.ones(FLAGS.num_class)
    assert topweight >= baseweight
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
            print(f'Agent {i}, dumb {dummy[i]}', end=' ', file=f)
            print([f'{i:.3f}' for i in w.tolist()], file=f)

    return AgentConfig(
        alphas=0.5 * np.ones(FLAGS.num_agents),
        sigmas=0.5 * np.ones(FLAGS.num_agents),
        dists=weights,
        start_coords=[(0, 0) for _ in range(FLAGS.num_agents)],
        dummy=dummy
    )

def getAgentConfig(mode):
    if mode == 'default':
        return AgentConfig(
            alphas=0.5*np.ones(FLAGS.num_agents),
            sigmas=0.5*np.ones(FLAGS.num_agents),
            dists=[np.ones(FLAGS.num_class)/FLAGS.num_class for _ in range(FLAGS.num_agents)],
            start_coords=[(0, 0) for _ in range(FLAGS.num_agents)],
            dummy=[False for _ in range(FLAGS.num_agents)]
        )
    elif mode == 'nclass':
        distr = np.array([[FLAGS.num_agents, 5, 1, 4]])
        return gen_distribution(distr)
    elif mode == 'nclass-2':
        distr = np.array([[FLAGS.num_agents, 3, 1, 5]])
        return gen_distribution(distr)
    elif mode == 'nclass-3':
        distr = np.array([[FLAGS.num_agents, 3, 1, 10]])
        return gen_distribution(distr)
    elif mode == 'nclass-4':
        distr = np.array([[FLAGS.num_agents, 3, 1, 15]])
        return gen_distribution(distr)
    elif mode == 'nclass-5':
        a = max(min(2, FLAGS.num_agents - 2), 0)
        b = FLAGS.num_agents - a
        distr = np.array([[a, 1, 1, 5], [b, 3, 1, 5]])
        return gen_distribution(distr)
    elif mode == 'dumb-1':
        a = max(min(1, FLAGS.num_agents - 1), 0)
        b = FLAGS.num_agents - a
        distr = np.array([[a, 0, 1, 5], [b, 10, 1, 5]])
        return gen_distribution(distr)
    elif mode == 'dumb-2':
        a = max(min(2, FLAGS.num_agents - 2), 0)
        b = FLAGS.num_agents - a
        distr = np.array([[a, 0, 1, 5], [b, 10, 1, 5]])
        return gen_distribution(distr)
    elif mode == 'dumb-3':
        a = max(min(1, FLAGS.num_agents - 1), 0)
        b = FLAGS.num_agents - a
        distr = np.array([[a, 0, 1, 5], [b, int(10 / FLAGS.num_agents) + 1, 1, 15]])
        return gen_distribution(distr)
    elif mode == 'extreme':
        dists = [np.zeros(FLAGS.num_class) for _ in range(FLAGS.num_agents)]
        tot = FLAGS.num_class
        per = tot // FLAGS.num_agents
        cls_count = [per] * FLAGS.num_agents
        left = tot - sum(cls_count)
        for i in range(left):
            cls_count[i] += 1

        for i in range(FLAGS.num_agents):
            pre = sum(cls_count[:i])
            dists[i][pre:pre+cls_count[i]] = 1 / cls_count[i]
        print(dists)

        return AgentConfig(
            alphas=0.5 * np.ones(FLAGS.num_agents),
            sigmas=0.5 * np.ones(FLAGS.num_agents),
            dists=dists,
            start_coords=[(0, 0) for _ in range(FLAGS.num_agents)],
            dummy=[False for _ in range(FLAGS.num_agents)]
        )
    else:
        raise NotImplementedError(f"agent_info mode not implemented {mode}")
