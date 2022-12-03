mkdir -p exp
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_fix-.5-0
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net fix-.5 --logdir ./exp/AGT20-0_IMG30_SK10-15_fix-.5-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_fix-1-0
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net fix-1 --logdir ./exp/AGT20-0_IMG30_SK10-15_fix-1-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_ddpgheuristic-0
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net ddpgheuristic --logdir ./exp/AGT20-0_IMG30_SK10-15_ddpgheuristic-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_heuristic-3-0
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net heuristic-3 --logdir ./exp/AGT20-0_IMG30_SK10-15_heuristic-3-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_cheat-.1-0
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net cheat-.1 --logdir ./exp/AGT20-0_IMG30_SK10-15_cheat-.1-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_fix-.5-0
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net fix-.5 --logdir ./exp/AGT20-0_IMG30_SK4-15_fix-.5-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_fix-1-0
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net fix-1 --logdir ./exp/AGT20-0_IMG30_SK4-15_fix-1-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_ddpgheuristic-0
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net ddpgheuristic --logdir ./exp/AGT20-0_IMG30_SK4-15_ddpgheuristic-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_heuristic-3-0
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net heuristic-3 --logdir ./exp/AGT20-0_IMG30_SK4-15_heuristic-3-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_cheat-.1-0
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net cheat-.1 --logdir ./exp/AGT20-0_IMG30_SK4-15_cheat-.1-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_fix-.5-0
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net fix-.5 --logdir ./exp/AGT20-8_IMG30_SK10-15_fix-.5-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_fix-1-0
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net fix-1 --logdir ./exp/AGT20-8_IMG30_SK10-15_fix-1-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_ddpgheuristic-0
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net ddpgheuristic --logdir ./exp/AGT20-8_IMG30_SK10-15_ddpgheuristic-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_heuristic-3-0
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net heuristic-3 --logdir ./exp/AGT20-8_IMG30_SK10-15_heuristic-3-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_cheat-.1-0
wait
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net cheat-.1 --logdir ./exp/AGT20-8_IMG30_SK10-15_cheat-.1-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_fix-.5-0
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net fix-.5 --logdir ./exp/AGT20-8_IMG30_SK4-15_fix-.5-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_fix-1-0
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net fix-1 --logdir ./exp/AGT20-8_IMG30_SK4-15_fix-1-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_ddpgheuristic-0
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net ddpgheuristic --logdir ./exp/AGT20-8_IMG30_SK4-15_ddpgheuristic-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_heuristic-3-0
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net heuristic-3 --logdir ./exp/AGT20-8_IMG30_SK4-15_heuristic-3-0 --seed 0 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_cheat-.1-0
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 100 --n_train_img 30 --beta_net cheat-.1 --logdir ./exp/AGT20-8_IMG30_SK4-15_cheat-.1-0 --seed 0 > /dev/null &
