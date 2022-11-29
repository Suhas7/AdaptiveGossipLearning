from absl import flags
from typing import List

from dataclasses import dataclass
import numpy as np
import numpy.typing as npt

from random import seed


FLAGS = flags.FLAGS
flags.DEFINE_integer('num_agents', None, lower_bound=1, help='')
flags.mark_flag_as_required('num_agents')
flags.DEFINE_integer('num_class', None, lower_bound=1, help='')
flags.mark_flag_as_required('num_class')
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
    if N == 0:
        return np.ones(FLAGS.num_class) / FLAGS.num_class
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
    seed(FLAGS.seed)
    np.random.seed(FLAGS.seed)
    
    if mode == 'default':
        return AgentConfig(
            alphas=0.5*np.ones(FLAGS.num_agents),
            sigmas=0.5*np.ones(FLAGS.num_agents),
            dists=[np.ones(FLAGS.num_class)/FLAGS.num_class for _ in range(FLAGS.num_agents)],
            start_coords=[(0, 0) for _ in range(FLAGS.num_agents)],
            dummy=[False for _ in range(FLAGS.num_agents)]
        )
    # All good agents
    elif mode == 'good-1':  # Balanced data
        distr = np.array([[FLAGS.num_agents, 10, 1, 1]])
        return gen_distribution(distr)
    elif mode == 'good-2':  # Unbalanced data
        distr = np.array([[FLAGS.num_agents, 4, 1, 10]])
        return gen_distribution(distr)
    elif mode == 'good-3':  # Unbalanced data
        distr = np.array([[FLAGS.num_agents, 4, 1, 50]])
        return gen_distribution(distr)

    # One dumb agent
    elif mode == '1dumb-1':  # 1 dumb agent, other agents have balanced data
        assert FLAGS.num_agents > 1, "mode 1dumb-1 requires more than 1 agents"
        distr = np.array([[1, 0, 1, 1], [FLAGS.num_agents - 1, 10, 1, 1]])
        return gen_distribution(distr)
    elif mode == '1dumb-2':  # 1 dumb agent, other agents have unbalanced data
        assert FLAGS.num_agents > 1, "mode 1dumb-2 requires more than 1 agents"
        distr = np.array([[1, 0, 1, 1], [FLAGS.num_agents - 1, 4, 1, 10]])
        return gen_distribution(distr)
    elif mode == '1dumb-3':  # 1 dumb agent, other agents have unbalanced data
        assert FLAGS.num_agents > 1, "mode 1dumb-3 requires more than 1 agents"
        distr = np.array([[1, 0, 1, 1], [FLAGS.num_agents - 1, 4, 1, 50]])
        return gen_distribution(distr)
    elif mode == '1dumb-balance':
        assert FLAGS.num_agents > 1, "mode 1dumb-balance requires more than 1 agents"
        distr = np.array([[1, 0, 1, 1], [FLAGS.num_agents-1, 10, 1, 1]])
        return gen_distribution(distr)

    # Two dumb agents
    elif mode == '2dumb-1':  # 2 dumb agent, other agents have balanced data
        assert FLAGS.num_agents > 2, "mode 2dumb-1 requires more than 2 agents"
        distr = np.array([[2, 0, 1, 1], [FLAGS.num_agents - 2, 10, 1, 1]])
        return gen_distribution(distr)
    elif mode == '2dumb-balance':
        assert FLAGS.num_agents > 2, "mode 2dumb-balance requires more than 2 agents"
        distr = np.array([[2, 0, 1, 1], [FLAGS.num_agents - 2, 10, 1, 1]])
        return gen_distribution(distr)

    # Three dumb agents
    elif mode == '3dumb-balance':
        assert FLAGS.num_agents > 3, "mode 3dumb-balance requires more than 3 agents"
        distr = np.array([[3, 0, 1, 1], [FLAGS.num_agents - 3, 10, 1, 1]])
        return gen_distribution(distr)


    elif mode == '1dumb-extreme-1':
        dumb_cnt = max(min(1, FLAGS.num_agents-1), 0)
        smart_cnt = FLAGS.num_agents - dumb_cnt
        dummy_indicator = [1]*dumb_cnt + [0]*smart_cnt
        offset = dumb_cnt

        dists = [np.zeros(FLAGS.num_class) for _ in range(FLAGS.num_agents)]
        tot = FLAGS.num_class
        per = tot // smart_cnt
        cls_count = [None] * dumb_cnt + [per] * smart_cnt
        
        left = tot - sum(cls_count[offset:])
        for i in range(left):
            cls_count[i+offset] += 1

        for i in range(dumb_cnt):
            dists[i][:] = 1 / FLAGS.num_class
        for i in range(smart_cnt):
            pre = sum(cls_count[offset:offset+i])
            dists[offset+i][pre:pre+cls_count[offset+i]] = 1 / cls_count[i+offset]
        print(dists)

        return AgentConfig(
            alphas=0.5 * np.ones(FLAGS.num_agents),
            sigmas=0.5 * np.ones(FLAGS.num_agents),
            dists=dists,
            start_coords=[(0, 0) for _ in range(FLAGS.num_agents)],
            dummy=dummy_indicator
        )
    elif mode == 'extreme-1':
        dumb_cnt = 0
        smart_cnt = FLAGS.num_agents - dumb_cnt
        dummy_indicator = [1]*dumb_cnt + [0]*smart_cnt
        offset = dumb_cnt

        dists = [np.zeros(FLAGS.num_class) for _ in range(FLAGS.num_agents)]
        tot = FLAGS.num_class
        per = tot // smart_cnt
        cls_count = [None] * dumb_cnt + [per] * smart_cnt
        
        left = tot - sum(cls_count[offset:])
        for i in range(left):
            cls_count[i+offset] += 1

        for i in range(dumb_cnt):
            dists[i][:] = 1 / FLAGS.num_class
        for i in range(smart_cnt):
            pre = sum(cls_count[offset:offset+i])
            dists[offset+i][pre:pre+cls_count[offset+i]] = 1 / cls_count[i+offset]
        print(dists)

        return AgentConfig(
            alphas=0.5 * np.ones(FLAGS.num_agents),
            sigmas=0.5 * np.ones(FLAGS.num_agents),
            dists=dists,
            start_coords=[(0, 0) for _ in range(FLAGS.num_agents)],
            dummy=dummy_indicator
        )
    else:
        raise NotImplementedError(f"agent_info mode not implemented {mode}")
