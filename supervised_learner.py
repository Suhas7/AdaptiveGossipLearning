import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LinearRegression
from sklearn.metrics import mean_squared_error, mean_absolute_error
import pickle as pkl

class SLBetaModel:
	def __init__(self, model):
		self.model = model
	def predict(val):
		return self.sigmoid(self.model.predict(val))
	def sigmoid(x):
	    ex = np.exp(x)
	    return ex / (1 + ex)

df = pd.read_csv('data.csv')
X, y = df.iloc[:, 1:31].to_numpy(), df.iloc[:, 31].to_numpy()
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

with open("sl_beta_linear_reg.pkl",'wb') as fp:
	pkl.dump(SLBetaModel(model),fp)

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

with open("sl_beta_log_odd_ratio_linear_reg.pkl",'wb') as fp:
	pkl.dump(SLBetaModel(model),fp)
