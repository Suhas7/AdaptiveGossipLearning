import os
from itertools import product

params = [[10,50,100],  #NUM_AGENTS
		  [.2,.5,.8], #%_DUMB
		  [10,4], #NUM_SKEW_CLASSES (balance,half unbalance)
		  [15], # topweight
		  [400], # num env steps
		  [10,50], #num_train_images
		  ["fix-0.5","fix-1.0","heuristic","sl_20a10d_linear.pkl"], # Modes
		  ["--decay_lr",""]] #Whether to decay LR or not

cmds = list()
cmds.append("mkdir -p exp")
cmds.append("mkdir -p suhas_script")
visited = set()
count = 0
for cfg in product(*params):
	na,pd,nsk,dsk,nes,nti,bn,dlr = cfg
	if bn[:3]=="fix": dlr=""
	ld = f"./suhas_script/AGT{na}-{int(na*pd)}_IMG{nti}_SK{nsk}-{dsk}_{bn}"
	if dlr!="":
		ld+="-dlr"
	if ld in visited: continue
	visited.add(ld)
	count += 1
	cmds.append(f"mkdir -p {ld}")
	wait = "&" if count %5 != 0 else ""
	cmd = f"python3 main.py --num_agents {na} --num_dumb {int(na*pd)} --nskew {nsk} --topweight {dsk} "+\
			f"--num_env_steps {nes} --n_train_img {nti} --beta_net {bn} {dlr} --log_dir {ld} {wait}"
	cmds.append(cmd)

with open("suhas_run.sh","w") as fd:
	for cmd in cmds:
		print(cmd,file=fd)
print(f"exported {count} runs")