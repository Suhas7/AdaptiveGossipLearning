mkdir -p exp
mkdir -p ./exp/AGT8-1_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 8 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT8-1_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT8-1_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 8 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT8-1_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT8-1_IMG10_SK10-15_heuristic
python3 main.py --num_agents 8 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT8-1_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT8-1_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 8 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT8-1_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT8-1_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 8 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT8-1_IMG50_SK10-15_fix-0.5 
mkdir -p ./exp/AGT8-1_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 8 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT8-1_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT8-1_IMG50_SK10-15_heuristic
python3 main.py --num_agents 8 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT8-1_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT8-1_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 8 --num_dumb 1 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT8-1_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT8-1_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 8 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT8-1_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT8-1_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 8 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT8-1_IMG10_SK4-15_fix-1.0 
mkdir -p ./exp/AGT8-1_IMG10_SK4-15_heuristic
python3 main.py --num_agents 8 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT8-1_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT8-1_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 8 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT8-1_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT8-1_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 8 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT8-1_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT8-1_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 8 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT8-1_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT8-1_IMG50_SK4-15_heuristic
python3 main.py --num_agents 8 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT8-1_IMG50_SK4-15_heuristic 
mkdir -p ./exp/AGT8-1_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 8 --num_dumb 1 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT8-1_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT8-4_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 8 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT8-4_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT8-4_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 8 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT8-4_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT8-4_IMG10_SK10-15_heuristic
python3 main.py --num_agents 8 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT8-4_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT8-4_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 8 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT8-4_IMG10_SK10-15_linear_cheat20-.04 
mkdir -p ./exp/AGT8-4_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 8 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT8-4_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT8-4_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 8 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT8-4_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT8-4_IMG50_SK10-15_heuristic
python3 main.py --num_agents 8 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT8-4_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT8-4_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 8 --num_dumb 4 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT8-4_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT8-4_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 8 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT8-4_IMG10_SK4-15_fix-0.5 
mkdir -p ./exp/AGT8-4_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 8 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT8-4_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT8-4_IMG10_SK4-15_heuristic
python3 main.py --num_agents 8 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT8-4_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT8-4_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 8 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT8-4_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT8-4_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 8 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT8-4_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT8-4_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 8 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT8-4_IMG50_SK4-15_fix-1.0 
mkdir -p ./exp/AGT8-4_IMG50_SK4-15_heuristic
python3 main.py --num_agents 8 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT8-4_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT8-4_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 8 --num_dumb 4 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT8-4_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT8-6_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 8 --num_dumb 6 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT8-6_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT8-6_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 8 --num_dumb 6 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT8-6_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT8-6_IMG10_SK10-15_heuristic
python3 main.py --num_agents 8 --num_dumb 6 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT8-6_IMG10_SK10-15_heuristic 
mkdir -p ./exp/AGT8-6_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 8 --num_dumb 6 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT8-6_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT8-6_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 8 --num_dumb 6 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT8-6_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT8-6_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 8 --num_dumb 6 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT8-6_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT8-6_IMG50_SK10-15_heuristic
python3 main.py --num_agents 8 --num_dumb 6 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT8-6_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT8-6_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 8 --num_dumb 6 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT8-6_IMG50_SK10-15_linear_cheat20-.04 
mkdir -p ./exp/AGT8-6_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 8 --num_dumb 6 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT8-6_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT8-6_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 8 --num_dumb 6 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT8-6_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT8-6_IMG10_SK4-15_heuristic
python3 main.py --num_agents 8 --num_dumb 6 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT8-6_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT8-6_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 8 --num_dumb 6 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT8-6_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT8-6_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 8 --num_dumb 6 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT8-6_IMG50_SK4-15_fix-0.5 
mkdir -p ./exp/AGT8-6_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 8 --num_dumb 6 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT8-6_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT8-6_IMG50_SK4-15_heuristic
python3 main.py --num_agents 8 --num_dumb 6 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT8-6_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT8-6_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 8 --num_dumb 6 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT8-6_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT25-5_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 25 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT25-5_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT25-5_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 25 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT25-5_IMG10_SK10-15_fix-1.0 
mkdir -p ./exp/AGT25-5_IMG10_SK10-15_heuristic
python3 main.py --num_agents 25 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT25-5_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT25-5_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 25 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT25-5_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT25-5_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 25 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT25-5_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT25-5_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 25 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT25-5_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT25-5_IMG50_SK10-15_heuristic
python3 main.py --num_agents 25 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT25-5_IMG50_SK10-15_heuristic 
mkdir -p ./exp/AGT25-5_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 25 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT25-5_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT25-5_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 25 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT25-5_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT25-5_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 25 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT25-5_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT25-5_IMG10_SK4-15_heuristic
python3 main.py --num_agents 25 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT25-5_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT25-5_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 25 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT25-5_IMG10_SK4-15_linear_cheat20-.04 
mkdir -p ./exp/AGT25-5_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 25 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT25-5_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT25-5_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 25 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT25-5_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT25-5_IMG50_SK4-15_heuristic
python3 main.py --num_agents 25 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT25-5_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT25-5_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 25 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT25-5_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT25-12_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 25 --num_dumb 12 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT25-12_IMG10_SK10-15_fix-0.5 
mkdir -p ./exp/AGT25-12_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 25 --num_dumb 12 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT25-12_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT25-12_IMG10_SK10-15_heuristic
python3 main.py --num_agents 25 --num_dumb 12 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT25-12_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT25-12_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 25 --num_dumb 12 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT25-12_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT25-12_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 25 --num_dumb 12 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT25-12_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT25-12_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 25 --num_dumb 12 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT25-12_IMG50_SK10-15_fix-1.0 
mkdir -p ./exp/AGT25-12_IMG50_SK10-15_heuristic
python3 main.py --num_agents 25 --num_dumb 12 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT25-12_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT25-12_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 25 --num_dumb 12 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT25-12_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT25-12_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 25 --num_dumb 12 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT25-12_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT25-12_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 25 --num_dumb 12 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT25-12_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT25-12_IMG10_SK4-15_heuristic
python3 main.py --num_agents 25 --num_dumb 12 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT25-12_IMG10_SK4-15_heuristic 
mkdir -p ./exp/AGT25-12_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 25 --num_dumb 12 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT25-12_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT25-12_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 25 --num_dumb 12 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT25-12_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT25-12_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 25 --num_dumb 12 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT25-12_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT25-12_IMG50_SK4-15_heuristic
python3 main.py --num_agents 25 --num_dumb 12 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT25-12_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT25-12_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 25 --num_dumb 12 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT25-12_IMG50_SK4-15_linear_cheat20-.04 
mkdir -p ./exp/AGT25-20_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 25 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT25-20_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT25-20_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 25 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT25-20_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT25-20_IMG10_SK10-15_heuristic
python3 main.py --num_agents 25 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT25-20_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT25-20_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 25 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT25-20_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT25-20_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 25 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT25-20_IMG50_SK10-15_fix-0.5 
mkdir -p ./exp/AGT25-20_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 25 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT25-20_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT25-20_IMG50_SK10-15_heuristic
python3 main.py --num_agents 25 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT25-20_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT25-20_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 25 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT25-20_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT25-20_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 25 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT25-20_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT25-20_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 25 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT25-20_IMG10_SK4-15_fix-1.0 
mkdir -p ./exp/AGT25-20_IMG10_SK4-15_heuristic
python3 main.py --num_agents 25 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT25-20_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT25-20_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 25 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT25-20_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT25-20_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 25 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT25-20_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT25-20_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 25 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT25-20_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT25-20_IMG50_SK4-15_heuristic
python3 main.py --num_agents 25 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT25-20_IMG50_SK4-15_heuristic 
mkdir -p ./exp/AGT25-20_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 25 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT25-20_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT70-14_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 70 --num_dumb 14 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT70-14_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT70-14_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 70 --num_dumb 14 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT70-14_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT70-14_IMG10_SK10-15_heuristic
python3 main.py --num_agents 70 --num_dumb 14 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT70-14_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT70-14_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 70 --num_dumb 14 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT70-14_IMG10_SK10-15_linear_cheat20-.04 
mkdir -p ./exp/AGT70-14_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 70 --num_dumb 14 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT70-14_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT70-14_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 70 --num_dumb 14 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT70-14_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT70-14_IMG50_SK10-15_heuristic
python3 main.py --num_agents 70 --num_dumb 14 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT70-14_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT70-14_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 70 --num_dumb 14 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT70-14_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT70-14_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 70 --num_dumb 14 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT70-14_IMG10_SK4-15_fix-0.5 
mkdir -p ./exp/AGT70-14_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 70 --num_dumb 14 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT70-14_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT70-14_IMG10_SK4-15_heuristic
python3 main.py --num_agents 70 --num_dumb 14 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT70-14_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT70-14_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 70 --num_dumb 14 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT70-14_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT70-14_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 70 --num_dumb 14 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT70-14_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT70-14_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 70 --num_dumb 14 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT70-14_IMG50_SK4-15_fix-1.0 
mkdir -p ./exp/AGT70-14_IMG50_SK4-15_heuristic
python3 main.py --num_agents 70 --num_dumb 14 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT70-14_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT70-14_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 70 --num_dumb 14 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT70-14_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT70-35_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 70 --num_dumb 35 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT70-35_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT70-35_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 70 --num_dumb 35 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT70-35_IMG10_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT70-35_IMG10_SK10-15_heuristic
python3 main.py --num_agents 70 --num_dumb 35 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT70-35_IMG10_SK10-15_heuristic 
mkdir -p ./exp/AGT70-35_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 70 --num_dumb 35 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT70-35_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT70-35_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 70 --num_dumb 35 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT70-35_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT70-35_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 70 --num_dumb 35 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT70-35_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT70-35_IMG50_SK10-15_heuristic
python3 main.py --num_agents 70 --num_dumb 35 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT70-35_IMG50_SK10-15_heuristic &
mkdir -p ./exp/AGT70-35_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 70 --num_dumb 35 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT70-35_IMG50_SK10-15_linear_cheat20-.04 
mkdir -p ./exp/AGT70-35_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 70 --num_dumb 35 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT70-35_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT70-35_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 70 --num_dumb 35 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT70-35_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT70-35_IMG10_SK4-15_heuristic
python3 main.py --num_agents 70 --num_dumb 35 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT70-35_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT70-35_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 70 --num_dumb 35 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT70-35_IMG10_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT70-35_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 70 --num_dumb 35 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT70-35_IMG50_SK4-15_fix-0.5 
mkdir -p ./exp/AGT70-35_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 70 --num_dumb 35 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT70-35_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT70-35_IMG50_SK4-15_heuristic
python3 main.py --num_agents 70 --num_dumb 35 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT70-35_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT70-35_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 70 --num_dumb 35 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT70-35_IMG50_SK4-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT70-56_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 70 --num_dumb 56 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT70-56_IMG10_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT70-56_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 70 --num_dumb 56 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT70-56_IMG10_SK10-15_fix-1.0 
mkdir -p ./exp/AGT70-56_IMG10_SK10-15_heuristic
python3 main.py --num_agents 70 --num_dumb 56 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT70-56_IMG10_SK10-15_heuristic &
mkdir -p ./exp/AGT70-56_IMG10_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 70 --num_dumb 56 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT70-56_IMG10_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT70-56_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 70 --num_dumb 56 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT70-56_IMG50_SK10-15_fix-0.5 &
mkdir -p ./exp/AGT70-56_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 70 --num_dumb 56 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT70-56_IMG50_SK10-15_fix-1.0 &
mkdir -p ./exp/AGT70-56_IMG50_SK10-15_heuristic
python3 main.py --num_agents 70 --num_dumb 56 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT70-56_IMG50_SK10-15_heuristic 
mkdir -p ./exp/AGT70-56_IMG50_SK10-15_linear_cheat20-.04
python3 main.py --num_agents 70 --num_dumb 56 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT70-56_IMG50_SK10-15_linear_cheat20-.04 &
mkdir -p ./exp/AGT70-56_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 70 --num_dumb 56 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5 --logdir ./exp/AGT70-56_IMG10_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT70-56_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 70 --num_dumb 56 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0 --logdir ./exp/AGT70-56_IMG10_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT70-56_IMG10_SK4-15_heuristic
python3 main.py --num_agents 70 --num_dumb 56 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --logdir ./exp/AGT70-56_IMG10_SK4-15_heuristic &
mkdir -p ./exp/AGT70-56_IMG10_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 70 --num_dumb 56 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT70-56_IMG10_SK4-15_linear_cheat20-.04 
mkdir -p ./exp/AGT70-56_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 70 --num_dumb 56 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5 --logdir ./exp/AGT70-56_IMG50_SK4-15_fix-0.5 &
mkdir -p ./exp/AGT70-56_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 70 --num_dumb 56 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0 --logdir ./exp/AGT70-56_IMG50_SK4-15_fix-1.0 &
mkdir -p ./exp/AGT70-56_IMG50_SK4-15_heuristic
python3 main.py --num_agents 70 --num_dumb 56 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --logdir ./exp/AGT70-56_IMG50_SK4-15_heuristic &
mkdir -p ./exp/AGT70-56_IMG50_SK4-15_linear_cheat20-.04
python3 main.py --num_agents 70 --num_dumb 56 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_cheat20-.04 --logdir ./exp/AGT70-56_IMG50_SK4-15_linear_cheat20-.04 &
