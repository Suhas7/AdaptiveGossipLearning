import pandas
from sklearn import model_selection
from sklearn.linear_model import LogisticRegression
import pickle as pk
dataframe = pandas.read_csv("data.csv")
array = dataframe.values
X = array[:,0:4]
Y = array[:,4]
model = LogisticRegression()
model.fit(X, Y)

pk.save("lr_beta.pkl")