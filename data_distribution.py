from collections import defaultdict
from tqdm import tqdm
import torch
from absl import logging
from torchvision import datasets, transforms
from torch.utils.data import Subset
import numpy as np


def fetch_mnist_data():
    tensor_transform = transforms.Compose([transforms.ToTensor()])
    full_train = datasets.MNIST(root='./data', train=True, download=True, transform=tensor_transform)
    full_test = datasets.MNIST(root='./data', train=False, download=True, transform=tensor_transform)
    return full_train, full_test

# Assumes data is not a tensor
class DataDistributor:
    """
    Distributes data according to a predefined distribution. 

    :param data: List of data that should be redistributed
    :param num_classes: Number of possible classes

    :type data: List
    :type num_classes: int
    """
    def __init__(self, dataset, num_classes, device):
        self.num_classes = num_classes
        self.device = device
        self.dataset = dataset
        self.buckets = defaultdict(list)
        for idx, (_, label) in enumerate(dataset):
            self.buckets[label].append(idx)

    # TODO: split data into training / validation sets
    def distribute_data(self, dist, num_elements, seed):
        """
        Leverages Pythons random library to split data into non-iid subsets.

        :param dist: Desired distribution of data. List of values used to determine relative size of each class of data.
        :param num_elements: The size of the returned distributed data

        :type dist: List of ints or List of floats
        :type num_elements: int
        """
        # calculate size for each class
        assert abs(sum(dist) - 1) < 1e-5
        assert len(dist) == self.num_classes
        size = [int(dist[i]*num_elements) for i in range(self.num_classes)]
        # distribute the remaining elements due to rounding
        remain_cnt = num_elements - sum(size)
        cur_idx = 0
        while remain_cnt > 0:
            if dist[cur_idx] > 0:
                size[cur_idx] += 1
                remain_cnt -= 1
            cur_idx += 1

        logging.debug(f'seed {seed} datadist {size}')

        # random generator for sampling
        rng = np.random.default_rng(seed=seed)
        all_idx = []
        for i in range(self.num_classes):
            all_idx.append(rng.choice(self.buckets[i], size=size[i], replace=False))

        all_idx = np.concatenate(all_idx)

        return Subset(self.dataset, all_idx)
