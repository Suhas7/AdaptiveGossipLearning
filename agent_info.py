import numpy as np

NUM_AGENTS = 10
NUM_LABELS = 10

DEFAULT_ALPHA = .5
DEFAULT_SIGMA = .5
DEFAULT_DISTRIBUTION = np.ones(NUM_LABELS)/NUM_LABELS


alphas = DEFAULT_ALPHA * np.ones(NUM_AGENTS)
sigmas = DEFAULT_SIGMA * np.ones(NUM_AGENTS)
distributions = [DEFAULT_DISTRIBUTION for _ in range(NUM_AGENTS)]

start_coords = [[0,0] for _ in range(NUM_AGENTS)]

agent_info = {
	"alphas":alphas,
	"sigmas":sigmas,
	"dists":distributions,
	"start_coords":start_coords
}