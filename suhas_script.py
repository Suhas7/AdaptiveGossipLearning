from itertools import product
import os
params = [[20],         #NUM_AGENTS
          [0,.4],       #%_DUMB
          [10,4],          #NUM_SKEW_CLASSES (balance,40% unbalance)
          [15],         # topweight
          [200],        # num env steps
          [30],         #num_train_images
          [
              "fix-0.5",
              "fix-1",
              "ddpg",
              #"classify",
              "heuristic",
              "heuristic-3",
              "cheat-.1"
              #"cheat-.1",
              #"pretrain-old_sllr.pkl --state_type vector",\
              #"pretrain-new_sllr.pkl --state_type composite"]   # beta net
          ],
          [1,2] # seed (seed 0 is run manually)
         ]

cmds = list()
cmds.append("mkdir -p exp")
visited = set()
count = 0
for cfg in product(*params):
        na,pd,nsk,dsk,nes,nti,bn,seed = cfg
        bn2 = bn.strip("pretrain-")
        ld = f"./exp/AGT{na}-{int(na*pd)}_IMG{nti}_SK{nsk}-{dsk}_{bn2}-{seed}"
        if ld in visited: continue
        if os.path.isdir(ld): continue
        visited.add(ld)
        count += 1
        cmds.append(f"mkdir -p {ld}")
        wait = "> /dev/null &" #if count %5 != 0 else ""
        cmd = f"python3 main.py --num_agents {na} --num_dumb {int(na*pd)} --nskew {nsk} --topweight {dsk} "+\
                        f"--num_env_steps {nes} --n_train_img {nti} --beta_net {bn} --logdir {ld} --seed {seed} {wait}"
        if count % 12 == 0:
            cmds.append('wait')
        cmds.append(cmd)

with open("suhas_run.sh","w") as fd:
        for cmd in cmds:
                print(cmd,file=fd)
print(f"exported {count} runs")
