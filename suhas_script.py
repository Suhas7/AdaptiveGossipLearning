import os

flags = [
	"num_agents",
	"per_dumb"
	"nskew"
	"dskew"
	"num_env_step"
	"n_train_img"
	"beta_net"			
	""
	"log_dir"
]

params = [[5,20,50,100],
		  [.1,.3,.5,.7,.9],
		  [10,5],
		  [13],
		  [400],
		  [10,50,1000],
		  ["fix-0.5","fix-1.0","heuristic","sl_linear_reg"],
		  ["--decay_lr",""]]


from itertools import product
cmds = list()
cmds.append("mkdir -p suhas_script")
for cfg in product(*params):
	na,pd,nsk,dsk,nes,nti,bn,dlr = cfg
	ld = f"./suhas_script/AGT{na}-{int(na*pd)}_IMG{nti}_SK{nsk}-{dsk}_{bn}"
	cmds.append(f"mkdir -p {ld}")
	cmd = f"python3 main.py --num_agents {na} --num_dumb {int(na*pd)} --nskew {nsk} --topweight {dsk} "+\
			f"--num_env_steps {nes} --n_train_img {nti} --beta_net {bn} {dlr} --log_dir {ld}"
	cmds.append(cmd)

with open("suhas_run.sh","w") as fd:
	for cmd in cmds:
		print(cmd,file=fd)