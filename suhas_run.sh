mkdir -p exp
mkdir -p ./exp/AGT5-1_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 5 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT5-1_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT5-1_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 5 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT5-1_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT5-1_IMG10_SK10-15_heuristic
python3 main.py --num_agents 5 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT5-1_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT5-1_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 5 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT5-1_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT5-1_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 5 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT5-1_IMG50_SK10-15_fix-0.5 
mkdir -p ./exp/AGT5-1_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 5 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT5-1_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT5-1_IMG50_SK10-15_heuristic
python3 main.py --num_agents 5 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT5-1_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT5-1_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 5 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT5-1_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT5-1_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 5 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT5-1_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT5-1_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 5 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT5-1_IMG10_SK4-15_fix-1.0 
mkdir -p ./exp/AGT5-1_IMG10_SK4-15_heuristic
python3 main.py --num_agents 5 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT5-1_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT5-1_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 5 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT5-1_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT5-1_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 5 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT5-1_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT5-1_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 5 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT5-1_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT5-1_IMG50_SK4-15_heuristic
python3 main.py --num_agents 5 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT5-1_IMG50_SK4-15_heuristic 
mkdir -p ./exp/AGT5-1_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 5 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT5-1_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT5-2_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 5 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT5-2_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT5-2_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 5 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT5-2_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT5-2_IMG10_SK10-15_heuristic
python3 main.py --num_agents 5 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT5-2_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT5-2_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 5 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT5-2_IMG10_SK10-15_linear_cheat20-.04 
mkdir -p ./exp/AGT5-2_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 5 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT5-2_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT5-2_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 5 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT5-2_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT5-2_IMG50_SK10-15_heuristic
python3 main.py --num_agents 5 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT5-2_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT5-2_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 5 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT5-2_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT5-2_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 5 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT5-2_IMG10_SK4-15_fix-0.5 
mkdir -p ./exp/AGT5-2_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 5 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT5-2_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT5-2_IMG10_SK4-15_heuristic
python3 main.py --num_agents 5 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT5-2_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT5-2_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 5 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT5-2_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT5-2_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 5 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT5-2_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT5-2_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 5 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT5-2_IMG50_SK4-15_fix-1.0 
mkdir -p ./exp/AGT5-2_IMG50_SK4-15_heuristic
python3 main.py --num_agents 5 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT5-2_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT5-2_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 5 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT5-2_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT5-4_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 5 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT5-4_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT5-4_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 5 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT5-4_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT5-4_IMG10_SK10-15_heuristic
python3 main.py --num_agents 5 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT5-4_IMG10_SK10-15_heuristic 
mkdir -p ./exp/AGT5-4_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 5 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT5-4_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT5-4_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 5 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT5-4_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT5-4_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 5 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT5-4_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT5-4_IMG50_SK10-15_heuristic
python3 main.py --num_agents 5 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT5-4_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT5-4_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 5 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT5-4_IMG50_SK10-15_linear_cheat20-.04 
mkdir -p ./exp/AGT5-4_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 5 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT5-4_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT5-4_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 5 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT5-4_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT5-4_IMG10_SK4-15_heuristic
python3 main.py --num_agents 5 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT5-4_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT5-4_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 5 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT5-4_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT5-4_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 5 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT5-4_IMG50_SK4-15_fix-0.5 
mkdir -p ./exp/AGT5-4_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 5 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT5-4_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT5-4_IMG50_SK4-15_heuristic
python3 main.py --num_agents 5 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT5-4_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT5-4_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 5 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT5-4_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT20-4_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 20 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT20-4_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT20-4_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 20 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT20-4_IMG10_SK10-15_fix-1.0 
mkdir -p ./exp/AGT20-4_IMG10_SK10-15_heuristic
python3 main.py --num_agents 20 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT20-4_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT20-4_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 20 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT20-4_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT20-4_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 20 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT20-4_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT20-4_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 20 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT20-4_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT20-4_IMG50_SK10-15_heuristic
python3 main.py --num_agents 20 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT20-4_IMG50_SK10-15_heuristic 
mkdir -p ./exp/AGT20-4_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 20 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT20-4_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT20-4_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 20 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT20-4_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT20-4_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 20 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT20-4_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT20-4_IMG10_SK4-15_heuristic
python3 main.py --num_agents 20 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT20-4_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT20-4_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 20 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT20-4_IMG10_SK4-15_linear_cheat20-.04 
mkdir -p ./exp/AGT20-4_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 20 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT20-4_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT20-4_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 20 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT20-4_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT20-4_IMG50_SK4-15_heuristic
python3 main.py --num_agents 20 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT20-4_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT20-4_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 20 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT20-4_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT20-10_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 20 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT20-10_IMG10_SK10-15_fix-0.5 
mkdir -p ./exp/AGT20-10_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 20 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT20-10_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT20-10_IMG10_SK10-15_heuristic
python3 main.py --num_agents 20 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT20-10_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT20-10_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 20 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT20-10_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT20-10_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 20 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT20-10_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT20-10_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 20 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT20-10_IMG50_SK10-15_fix-1.0 
mkdir -p ./exp/AGT20-10_IMG50_SK10-15_heuristic
python3 main.py --num_agents 20 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT20-10_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT20-10_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 20 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT20-10_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT20-10_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 20 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT20-10_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT20-10_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 20 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT20-10_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT20-10_IMG10_SK4-15_heuristic
python3 main.py --num_agents 20 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT20-10_IMG10_SK4-15_heuristic 
mkdir -p ./exp/AGT20-10_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 20 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT20-10_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT20-10_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 20 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT20-10_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT20-10_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 20 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT20-10_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT20-10_IMG50_SK4-15_heuristic
python3 main.py --num_agents 20 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT20-10_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT20-10_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 20 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT20-10_IMG50_SK4-15_linear_cheat20-.04 
mkdir -p ./exp/AGT20-16_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 20 --num_dumb 16 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT20-16_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT20-16_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 20 --num_dumb 16 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT20-16_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT20-16_IMG10_SK10-15_heuristic
python3 main.py --num_agents 20 --num_dumb 16 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT20-16_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT20-16_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 20 --num_dumb 16 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT20-16_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT20-16_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 20 --num_dumb 16 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT20-16_IMG50_SK10-15_fix-0.5 
mkdir -p ./exp/AGT20-16_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 20 --num_dumb 16 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT20-16_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT20-16_IMG50_SK10-15_heuristic
python3 main.py --num_agents 20 --num_dumb 16 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT20-16_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT20-16_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 20 --num_dumb 16 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT20-16_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT20-16_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 20 --num_dumb 16 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT20-16_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT20-16_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 20 --num_dumb 16 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT20-16_IMG10_SK4-15_fix-1.0 
mkdir -p ./exp/AGT20-16_IMG10_SK4-15_heuristic
python3 main.py --num_agents 20 --num_dumb 16 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT20-16_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT20-16_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 20 --num_dumb 16 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT20-16_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT20-16_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 20 --num_dumb 16 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT20-16_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT20-16_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 20 --num_dumb 16 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT20-16_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT20-16_IMG50_SK4-15_heuristic
python3 main.py --num_agents 20 --num_dumb 16 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT20-16_IMG50_SK4-15_heuristic 
mkdir -p ./exp/AGT20-16_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 20 --num_dumb 16 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT20-16_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT50-10_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT50-10_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT50-10_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT50-10_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT50-10_IMG10_SK10-15_heuristic
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT50-10_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT50-10_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT50-10_IMG10_SK10-15_linear_cheat20-.04 
mkdir -p ./exp/AGT50-10_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT50-10_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT50-10_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT50-10_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT50-10_IMG50_SK10-15_heuristic
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT50-10_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT50-10_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT50-10_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT50-10_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT50-10_IMG10_SK4-15_fix-0.5 
mkdir -p ./exp/AGT50-10_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT50-10_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT50-10_IMG10_SK4-15_heuristic
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT50-10_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT50-10_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT50-10_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT50-10_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT50-10_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT50-10_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT50-10_IMG50_SK4-15_fix-1.0 
mkdir -p ./exp/AGT50-10_IMG50_SK4-15_heuristic
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT50-10_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT50-10_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT50-10_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT50-25_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT50-25_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT50-25_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT50-25_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT50-25_IMG10_SK10-15_heuristic
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT50-25_IMG10_SK10-15_heuristic 
mkdir -p ./exp/AGT50-25_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT50-25_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT50-25_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT50-25_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT50-25_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT50-25_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT50-25_IMG50_SK10-15_heuristic
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT50-25_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT50-25_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT50-25_IMG50_SK10-15_linear_cheat20-.04 
mkdir -p ./exp/AGT50-25_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT50-25_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT50-25_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT50-25_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT50-25_IMG10_SK4-15_heuristic
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT50-25_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT50-25_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT50-25_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT50-25_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT50-25_IMG50_SK4-15_fix-0.5 
mkdir -p ./exp/AGT50-25_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT50-25_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT50-25_IMG50_SK4-15_heuristic
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT50-25_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT50-25_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT50-25_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT50-40_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT50-40_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT50-40_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT50-40_IMG10_SK10-15_fix-1.0 
mkdir -p ./exp/AGT50-40_IMG10_SK10-15_heuristic
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT50-40_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT50-40_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT50-40_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT50-40_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT50-40_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT50-40_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT50-40_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT50-40_IMG50_SK10-15_heuristic
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT50-40_IMG50_SK10-15_heuristic 
mkdir -p ./exp/AGT50-40_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT50-40_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT50-40_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT50-40_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT50-40_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT50-40_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT50-40_IMG10_SK4-15_heuristic
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT50-40_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT50-40_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT50-40_IMG10_SK4-15_linear_cheat20-.04 
mkdir -p ./exp/AGT50-40_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT50-40_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT50-40_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT50-40_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT50-40_IMG50_SK4-15_heuristic
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT50-40_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT50-40_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT50-40_IMG50_SK4-15_linear_cheat20-.04 &
