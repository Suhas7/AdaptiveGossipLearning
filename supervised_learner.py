import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, mean_absolute_error
from absl import flags, app
import pickle as pkl
import absl

FLAGS = flags.FLAGS
flags.DEFINE_string('postfix', '', help='')

import torch
import torch.nn as nn
from torch.optim import Adam

class nnBeta(nn.Module):
    def __init__(self, in_dim):
        super().__init__()
        self.net = nn.Sequential(
                nn.Linear(in_dim, in_dim*2),
                nn.Tanh(),
                nn.Linear(in_dim*2, 1),
                nn.Sigmoid()
            )
    def forward(self, x):
        return self.net(x)
    def predict(self, x):
        return self.forward(torch.as_tensor(x).float())

class SLBetaModel:
    def __init__(self, model):
        self.model = model
    def predict(self, val):
        return self.sigmoid(self.model.predict(val))
    def sigmoid(self, x):
        try:
            x = x.cpu().detach().numpy()
        except:
            pass
        ex = np.exp(x)
        return ex / (1 + ex)

def main(argv):
    df = pd.read_csv(FLAGS.logdir + '/data.csv', header=None)
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

    with open(FLAGS.logdir + f"/sl_linear_{FLAGS.postfix}.pkl", 'wb') as fp:
        pkl.dump(model, fp)

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

    # NN
    print('NN')
    model = nnBeta(train_X.shape[1])
    optimizer = Adam(model.parameters(), lr=1e-3)
    criterion = nn.MSELoss()
    for epoch in range(1000):
        pred_y = model(torch.from_numpy(train_X).float()).flatten()
        loss = criterion(pred_y, torch.from_numpy(train_y).float())
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()
        if epoch % 50 == 0:
            print(epoch, loss.item())
    pred_y = model.predict(torch.from_numpy(train_X).float()).detach().numpy().flatten()
    pred_y = np.clip(pred_y, 0, 1)
    print('train mse', mean_squared_error(train_y, pred_y))
    print('train mae', mean_absolute_error(train_y, pred_y))
    pred_y = model.predict(torch.from_numpy(test_X).float()).detach().numpy().flatten()
    pred_y = np.clip(pred_y, 0, 1)
    print('test mse', mean_squared_error(test_y, pred_y))
    print('test mae', mean_absolute_error(test_y, pred_y))

    with open(FLAGS.logdir + f"sl_{FLAGS.postfix}_/nn.pkl", 'wb') as fp:
        pkl.dump(SLBetaModel(model),fp)
    '''

if __name__ == '__main__':
    FLAGS = flags.FLAGS
    flags.DEFINE_string('logdir', '.', help='')
    app.run(main)
