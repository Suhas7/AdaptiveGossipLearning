from collections import defaultdict
from tqdm import tqdm
import torch
from torchvision import datasets, transforms
import random


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
    def __init__(self, data, num_classes, device):
        self.classes = num_classes
        self.device = device
        self.buckets = defaultdict(list)
        self.assign_data(data)

    # Collects data into according buckets based on precomputed bucket assignment
    def assign_data(self, dataset):
        """
        Places data into according buckets based on precomputed bucket assignment.

        :param data: List of data
        
        :type data: List
        """
        for elem in tqdm(dataset, desc="Partition dataset based on labels"):
            self.buckets[elem[1]].append(elem)

        '''Use this if want to move all data to gpu at first'''
        # image = dataset.data.to(self.device)
        # label = dataset.targets.to(self.device)
        #
        # for (image, label) in tqdm(zip(image, label), total=image.shape[0]):
        #     self.buckets[label.item()].append((image, label))

    # TODO: split data into training / validation sets
    def distribute_data(self, dist, num_elements):
        """
        Leverages Pythons random library to split data into non-iid subsets.

        :param dist: Desired distribution of data. List of values used to determine relative size of each class of data.
        :param num_elements: The size of the returned distributed data

        :type dist: List of ints or List of floats
        :type num_elements: int
        """
        if sum(dist) > 1:
            dist = [float(a) / float(sum(dist)) for a in dist]

        data = []
        for i in range(self.classes):
            num_unique = int(dist[i] * num_elements)
            data.extend(random.sample(self.buckets[i], num_unique))
            
        random.shuffle(data)
        return data
