mkdir -p exp
mkdir -p ./exp/AGT10-2_IMG50_SK4-15_linear_d13-fpretrain-linear_old-f
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 125 --n_train_img 50 --beta_net pretrain-linear_d13-fpretrain-linear_old-f --logdir ./exp/AGT10-2_IMG50_SK4-15_linear_d13-fpretrain-linear_old-f --seed 1 > /dev/null &
mkdir -p ./exp/AGT10-2_IMG50_SK4-15_heuristic-2
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 125 --n_train_img 50 --beta_net heuristic-2 --logdir ./exp/AGT10-2_IMG50_SK4-15_heuristic-2 --seed 1 > /dev/null &
mkdir -p ./exp/AGT10-5_IMG50_SK4-15_linear_d13-fpretrain-linear_old-f
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 125 --n_train_img 50 --beta_net pretrain-linear_d13-fpretrain-linear_old-f --logdir ./exp/AGT10-5_IMG50_SK4-15_linear_d13-fpretrain-linear_old-f --seed 1 > /dev/null &
mkdir -p ./exp/AGT10-5_IMG50_SK4-15_heuristic-2
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 125 --n_train_img 50 --beta_net heuristic-2 --logdir ./exp/AGT10-5_IMG50_SK4-15_heuristic-2 --seed 1 > /dev/null &
mkdir -p ./exp/AGT10-8_IMG50_SK4-15_linear_d13-fpretrain-linear_old-f
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 125 --n_train_img 50 --beta_net pretrain-linear_d13-fpretrain-linear_old-f --logdir ./exp/AGT10-8_IMG50_SK4-15_linear_d13-fpretrain-linear_old-f --seed 1 > /dev/null &
