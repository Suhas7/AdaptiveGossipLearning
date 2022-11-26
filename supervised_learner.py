import pandas
from sklearn import model_selection
from sklearn.linear_model import LinearRegression
import pickle as pk
dataframe = pandas.read_csv("data.csv")
array = dataframe.values
X = array[:,1:5]
Y = np.clip(array[:,5], 1e-8, 1 - 1e-8)
Y = np.log(Y / (1 - Y))
model = LinearRegression()
model.fit(X, Y)

class SLBetaModel:
	def __init__(self, model):
		self.model = model
	def predict(val):
		return self.sigmoid(self.model.predict(val))
	def sigmoid(x):
	    ex = np.exp(x)
	    return ex / (1 + ex)

with open("sl_beta.pkl",'wb') as fp:
	pk.dump(SLBetaModel(model),fp)