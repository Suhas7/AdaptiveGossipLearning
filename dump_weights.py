import pickle as pk
import sys
from supervised_learner import SLBetaModel

for fname in sys.argv[1:]:
	with open(fname,'rb') as fd:
		mod = pk.load(fd)
	print(fname)
	mod.get_weights()