mkdir -p exp
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_fix-0.5-1
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-0.5 --logdir ./exp/AGT20-0_IMG30_SK10-15_fix-0.5-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_fix-0.5-2
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-0.5 --logdir ./exp/AGT20-0_IMG30_SK10-15_fix-0.5-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_fix-1-1
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-1 --logdir ./exp/AGT20-0_IMG30_SK10-15_fix-1-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_fix-1-2
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-1 --logdir ./exp/AGT20-0_IMG30_SK10-15_fix-1-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_ddpg-1
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net ddpg --logdir ./exp/AGT20-0_IMG30_SK10-15_ddpg-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_ddpg-2
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net ddpg --logdir ./exp/AGT20-0_IMG30_SK10-15_ddpg-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_heuristic-1
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic --logdir ./exp/AGT20-0_IMG30_SK10-15_heuristic-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_heuristic-2
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic --logdir ./exp/AGT20-0_IMG30_SK10-15_heuristic-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_heuristic-3-1
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic-3 --logdir ./exp/AGT20-0_IMG30_SK10-15_heuristic-3-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_heuristic-3-2
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic-3 --logdir ./exp/AGT20-0_IMG30_SK10-15_heuristic-3-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_cheat-.1-1
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net cheat-.1 --logdir ./exp/AGT20-0_IMG30_SK10-15_cheat-.1-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK10-15_cheat-.1-2
wait
python3 main.py --num_agents 20 --num_dumb 0 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net cheat-.1 --logdir ./exp/AGT20-0_IMG30_SK10-15_cheat-.1-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_fix-0.5-1
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-0.5 --logdir ./exp/AGT20-0_IMG30_SK4-15_fix-0.5-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_fix-0.5-2
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-0.5 --logdir ./exp/AGT20-0_IMG30_SK4-15_fix-0.5-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_fix-1-1
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-1 --logdir ./exp/AGT20-0_IMG30_SK4-15_fix-1-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_fix-1-2
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-1 --logdir ./exp/AGT20-0_IMG30_SK4-15_fix-1-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_ddpg-1
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net ddpg --logdir ./exp/AGT20-0_IMG30_SK4-15_ddpg-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_ddpg-2
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net ddpg --logdir ./exp/AGT20-0_IMG30_SK4-15_ddpg-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_heuristic-1
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic --logdir ./exp/AGT20-0_IMG30_SK4-15_heuristic-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_heuristic-2
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic --logdir ./exp/AGT20-0_IMG30_SK4-15_heuristic-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_heuristic-3-1
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic-3 --logdir ./exp/AGT20-0_IMG30_SK4-15_heuristic-3-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_heuristic-3-2
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic-3 --logdir ./exp/AGT20-0_IMG30_SK4-15_heuristic-3-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_cheat-.1-1
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net cheat-.1 --logdir ./exp/AGT20-0_IMG30_SK4-15_cheat-.1-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-0_IMG30_SK4-15_cheat-.1-2
wait
python3 main.py --num_agents 20 --num_dumb 0 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net cheat-.1 --logdir ./exp/AGT20-0_IMG30_SK4-15_cheat-.1-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_fix-0.5-1
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-0.5 --logdir ./exp/AGT20-8_IMG30_SK10-15_fix-0.5-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_fix-0.5-2
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-0.5 --logdir ./exp/AGT20-8_IMG30_SK10-15_fix-0.5-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_fix-1-1
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-1 --logdir ./exp/AGT20-8_IMG30_SK10-15_fix-1-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_fix-1-2
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-1 --logdir ./exp/AGT20-8_IMG30_SK10-15_fix-1-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_ddpg-1
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net ddpg --logdir ./exp/AGT20-8_IMG30_SK10-15_ddpg-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_ddpg-2
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net ddpg --logdir ./exp/AGT20-8_IMG30_SK10-15_ddpg-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_heuristic-1
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic --logdir ./exp/AGT20-8_IMG30_SK10-15_heuristic-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_heuristic-2
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic --logdir ./exp/AGT20-8_IMG30_SK10-15_heuristic-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_heuristic-3-1
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic-3 --logdir ./exp/AGT20-8_IMG30_SK10-15_heuristic-3-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_heuristic-3-2
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic-3 --logdir ./exp/AGT20-8_IMG30_SK10-15_heuristic-3-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_cheat-.1-1
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net cheat-.1 --logdir ./exp/AGT20-8_IMG30_SK10-15_cheat-.1-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK10-15_cheat-.1-2
wait
python3 main.py --num_agents 20 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net cheat-.1 --logdir ./exp/AGT20-8_IMG30_SK10-15_cheat-.1-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_fix-0.5-1
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-0.5 --logdir ./exp/AGT20-8_IMG30_SK4-15_fix-0.5-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_fix-0.5-2
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-0.5 --logdir ./exp/AGT20-8_IMG30_SK4-15_fix-0.5-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_fix-1-1
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-1 --logdir ./exp/AGT20-8_IMG30_SK4-15_fix-1-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_fix-1-2
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net fix-1 --logdir ./exp/AGT20-8_IMG30_SK4-15_fix-1-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_ddpg-1
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net ddpg --logdir ./exp/AGT20-8_IMG30_SK4-15_ddpg-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_ddpg-2
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net ddpg --logdir ./exp/AGT20-8_IMG30_SK4-15_ddpg-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_heuristic-1
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic --logdir ./exp/AGT20-8_IMG30_SK4-15_heuristic-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_heuristic-2
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic --logdir ./exp/AGT20-8_IMG30_SK4-15_heuristic-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_heuristic-3-1
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic-3 --logdir ./exp/AGT20-8_IMG30_SK4-15_heuristic-3-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_heuristic-3-2
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net heuristic-3 --logdir ./exp/AGT20-8_IMG30_SK4-15_heuristic-3-2 --seed 2 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_cheat-.1-1
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net cheat-.1 --logdir ./exp/AGT20-8_IMG30_SK4-15_cheat-.1-1 --seed 1 > /dev/null &
mkdir -p ./exp/AGT20-8_IMG30_SK4-15_cheat-.1-2
wait
python3 main.py --num_agents 20 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 200 --n_train_img 30 --beta_net cheat-.1 --logdir ./exp/AGT20-8_IMG30_SK4-15_cheat-.1-2 --seed 2 > /dev/null &
