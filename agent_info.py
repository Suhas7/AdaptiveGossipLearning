from absl import flags

from dataclasses import dataclass
import numpy as np
import numpy.typing as npt

FLAGS = flags.FLAGS
flags.DEFINE_integer('num_agents', None, lower_bound=1, help='')
flags.mark_flag_as_required('num_agents')
flags.DEFINE_integer('num_class', None, lower_bound=1, help='')
flags.mark_flag_as_required('num_class')

@dataclass
class AgentConfig:
    alphas: npt.NDArray[np.float_]
    sigmas: npt.NDArray[np.float_]
    dists: list[npt.NDArray[np.float_]]
    start_coords: list[tuple]


'''Create a distribution where N classes have topweight, the rest have baseweight'''
def _gen_nclass(N, baseweight, topweight):
    assert topweight >= baseweight
    norm = N*topweight + (FLAGS.num_class-N)*baseweight
    w = np.ones(FLAGS.num_class)
    tops = np.random.choice(FLAGS.num_class, size=N, replace=False)
    w[tops] = topweight
    w /= norm
    return w


def gen_distribution(distributions=None):
    assert distributions is None or np.sum(distributions[:, 0]) == FLAGS.num_agents
    if distributions is None:
        distributions = np.array([[FLAGS.num_agents, 3, 1, 5]])
    weights = []
    for d in distributions:
        for i in range(d[0]):
            weights.append(_gen_nclass(d[1], d[2], d[3]))

    return AgentConfig(
        alphas=0.5 * np.ones(FLAGS.num_agents),
        sigmas=0.5 * np.ones(FLAGS.num_agents),
        dists=weights,
        start_coords=[(0, 0) for _ in range(FLAGS.num_agents)]
    )

def getAgentConfig(mode):
    if mode == 'default':
        return AgentConfig(
            alphas=0.5*np.ones(FLAGS.num_agents),
            sigmas=0.5*np.ones(FLAGS.num_agents),
            dists=[np.ones(FLAGS.num_class)/FLAGS.num_class for _ in range(FLAGS.num_agents)],
            start_coords=[(0, 0) for _ in range(FLAGS.num_agents)])
    elif mode == 'nclass':
        distr = np.array([[FLAGS.num_agents, 5, 1, 4]])
        return gen_distribution(distr)
    elif mode == 'nclass-2':
        distr = np.array([[FLAGS.num_agents, 3, 1, 5]])
        return gen_distribution(distr)
    elif mode == 'nclass-3':
        a = min(FLAGS.num_agents - 2, 2)
        b = FLAGS.num_agents - a
        distr = np.array([[a, 1, 1, 5], [b, 3, 1, 5]])
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
            start_coords=[(0, 0) for _ in range(FLAGS.num_agents)])
    else:
        raise NotImplementedError(f"agent_info mode not implemented {mode}")
