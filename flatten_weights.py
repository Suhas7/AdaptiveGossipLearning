import pickle as pk
import sys
from supervised_learner import SLBetaModel


fname = sys.argv[1]
model = fname + '.pkl'
with open(model, 'rb') as fd:
	mod = pk.load(fd)
mod.model.coef_[:10] = sum(mod.model.coef_[:10])/10
mod.model.coef_[10:20] = sum(mod.model.coef_[10:20])/10
mod.model.coef_[20:30] = sum(mod.model.coef_[20:30])/10
mod.get_weights()
out = fname + '-f.pkl'
with open(out, 'wb') as fd:
	pk.dump(mod, fd)
