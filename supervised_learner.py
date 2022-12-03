import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, mean_absolute_error
from absl import flags, app
import pickle as pkl

FLAGS = flags.FLAGS
flags.DEFINE_string('postfix', '', help='')
flags.DEFINE_string('data', 'data', help='')


import torch
import torch.nn as nn
from torch.optim import Adam

class nnBeta(nn.Module):
    def __init__(self, in_dim):
        super().__init__()
        self.net = nn.Sequential(
                nn.Linear(in_dim, in_dim**2),
                nn.Tanh(),
                nn.Linear(in_dim**2, 1),
                nn.Sigmoid()
            )
    def forward(self, x):
        return self.net(x)
    def predict(self, x):
        return self.forward(torch.as_tensor(x).float())

class customLayer(nn.Module):
    def __init__(self, in_dim):
        super().__init__()
        self.in_dim = in_dim
        self.params = nn.Parameter(.5 * torch.ones(7))
        self.bias = nn.Parameter(torch.zeros(2))

    def forward(self, x):
        accs = []
        for i in range(self.in_dim):
            for j in range(self.in_dim):
                A1 = x[:, i]     #perf gap on MD_i
                A2 = x[:, j]     #perf gap on MD_j
                A3 = x[:, self.in_dim+i]  #perf gap on YD_i
                A4 = x[:, self.in_dim+j]  #perf gap on YD_j
                D1 = x[:, 2 * self.in_dim + i] # difference in freq for i
                D2 = x[:, 2 * self.in_dim + j] # difference in freq for j
                info = [A1,A2,A3,A4,D1,D2]
                for k in range(len(info)):
                    accs.append(torch.tanh(info[k]*self.params[k] + self.bias[0]) * self.params[-1] + self.bias[1])
        return torch.vstack(accs).permute(1, 0)

class customNNBeta(nn.Module):
    def __init__(self, in_dim, num_labels):
        super().__init__()
        self.layer1 = customLayer(num_labels)
#        self.layer2 = customLayer(num_labels)

    def forward(self, x):
#        print(x.size())
        x = self.layer1(x)
#        print(x.size())
#        x = self.layer2(x)
#        print(x.size())

        return torch.sigmoid(x.sum(dim=1))

    def predict(self, x):
        return self.forward(torch.as_tensor(x).float())


class SLBetaModel:
    def __init__(self, model, type="linear"):
        self.model = model
        self.type = type

    def predict(self, val):
        val = self.model.predict(val)
        if self.type == "logistic": val = self.sigmoid(val)
        return np.clip(val,0,1)
    def sigmoid(self, x):
        try:
            x = x.cpu().detach().numpy()
        except:
            pass
        ex = np.exp(x)
        return ex / (1 + ex)
    def get_weights(self):
        print(self.model.coef_)
        print(self.model.intercept_)

def main(argv):
    import random
    random.seed(0)
    np.random.seed(0)
    df = pd.read_csv(FLAGS.logdir + '/' + FLAGS.data + '.csv', header=None)
    X, y = df.iloc[:, 1:-1].to_numpy(), df.iloc[:, -1].to_numpy()
    y = np.clip(y, 1e-8, 1-1e-8)
    train_X, test_X, train_y, test_y = train_test_split(X, y, train_size=0.75)

    # normal LR
    print('Linear Regression')
    model = LinearRegression().fit(train_X, train_y)
    pred_y = model.predict(train_X)
    pred_y = np.clip(pred_y, 0, 1)
    print('train mse', mean_squared_error(train_y, pred_y))
    print('train mae', mean_absolute_error(train_y, pred_y))
    pred_y = model.predict(test_X)
    pred_y = np.clip(pred_y, 0, 1)
    print('test mse', mean_squared_error(test_y, pred_y))
    print('test mae', mean_absolute_error(test_y, pred_y))
    model = LinearRegression().fit(X,y)
   # with open(FLAGS.logdir + f"/linear_{FLAGS.postfix}.pkl", 'wb') as fp:
   #     pkl.dump(SLBetaModel(model), fp)

    # NN
    print('NN')
    model = customNNBeta(train_X.shape[1], 10)
    optimizer = Adam(model.parameters(), lr=1e-3)
    criterion = nn.MSELoss()
    for epoch in range(1000):
        pred_y = model(torch.from_numpy(train_X).float()).flatten()
        loss = criterion(pred_y, torch.from_numpy(train_y).float())
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()
        if epoch % 100 == 0:
            print(epoch, loss.item())
    pred_y = model.predict(torch.from_numpy(train_X).float()).detach().numpy().flatten()
    pred_y = np.clip(pred_y, 0, 1)
    print('train mse', mean_squared_error(train_y, pred_y))
    print('train mae', mean_absolute_error(train_y, pred_y))
    pred_y = model.predict(torch.from_numpy(test_X).float()).detach().numpy().flatten()
    pred_y = np.clip(pred_y, 0, 1)
    print('test mse', mean_squared_error(test_y, pred_y))
    print('test mae', mean_absolute_error(test_y, pred_y))

    model = customNNBeta(X.shape[1], 10)
    optimizer = Adam(model.parameters(), lr=1e-3)
    criterion = nn.MSELoss()
    for epoch in range(1000):
        pred_y = model(torch.from_numpy(X).float()).flatten()
        loss = criterion(pred_y, torch.from_numpy(y).float())
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()
        if epoch % 100 == 0:
            print(epoch, loss.item())
    

    with open(FLAGS.logdir + f"/nn_{FLAGS.postfix}.pkl", 'wb') as fp:
        pkl.dump(SLBetaModel(model),fp)

    '''
    # log-odds-ratio
    print('log-odd-ratio')
    model = LinearRegression().fit(train_X, np.log(train_y / (1 - train_y)))
    pred_y = model.predict(train_X)
    pred_y = np.exp(pred_y) / (1 + np.exp(pred_y))
    print('train mse', mean_squared_error(train_y, pred_y))
    print('train mae', mean_absolute_error(train_y, pred_y))
    pred_y = model.predict(test_X)
    pred_y = np.exp(pred_y) / (1 + np.exp(pred_y))
    print('test mse', mean_squared_error(test_y, pred_y))
    print('test mae', mean_absolute_error(test_y, pred_y))

    with open(FLAGS.logdir + f"/sl_{FLAGS.postfix}_log_odd.pkl", 'wb') as fp:
        pkl.dump(SLBetaModel(model),fp)
    '''

if __name__ == '__main__':
    FLAGS = flags.FLAGS
    flags.DEFINE_string('logdir', '.', help='')
    app.run(main)
