import pickle as pk
import sys
from supervised_learner import SLBetaModel


fname = sys.argv[1:]:
with open(fname,'rb') as fd:
	mod = pk.load(fd)

mod.models.coef_[:10] = sum(mod.models.coef_[:10])/10
mod.models.coef_[10:20] = sum(mod.models.coef_[10:20])/10
mod.models.coef_[20:30] = sum(mod.models.coef_[20:30])/10

with open(fname,'wb') as fd:
	pk.dump(mod)
