mkdir -p exp
mkdir -p ./exp/AGT10-2_IMG10_SK10-15_linear_old
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT10-2_IMG10_SK10-15_linear_old &
mkdir -p ./exp/AGT10-2_IMG50_SK10-15_linear_old
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT10-2_IMG50_SK10-15_linear_old &
mkdir -p ./exp/AGT10-2_IMG10_SK4-15_linear_old
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT10-2_IMG10_SK4-15_linear_old &
mkdir -p ./exp/AGT10-2_IMG50_SK4-15_linear_old
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT10-2_IMG50_SK4-15_linear_old &
mkdir -p ./exp/AGT10-5_IMG10_SK10-15_linear_old
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT10-5_IMG10_SK10-15_linear_old 
mkdir -p ./exp/AGT10-5_IMG50_SK10-15_linear_old
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT10-5_IMG50_SK10-15_linear_old &
mkdir -p ./exp/AGT10-5_IMG10_SK4-15_linear_old
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT10-5_IMG10_SK4-15_linear_old &
mkdir -p ./exp/AGT10-5_IMG50_SK4-15_linear_old
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT10-5_IMG50_SK4-15_linear_old &
mkdir -p ./exp/AGT10-8_IMG10_SK10-15_linear_old
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT10-8_IMG10_SK10-15_linear_old &
mkdir -p ./exp/AGT10-8_IMG50_SK10-15_linear_old
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT10-8_IMG50_SK10-15_linear_old 
mkdir -p ./exp/AGT10-8_IMG10_SK4-15_linear_old
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT10-8_IMG10_SK4-15_linear_old &
mkdir -p ./exp/AGT10-8_IMG50_SK4-15_linear_old
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT10-8_IMG50_SK4-15_linear_old &
mkdir -p ./exp/AGT50-10_IMG10_SK10-15_linear_old
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT50-10_IMG10_SK10-15_linear_old &
mkdir -p ./exp/AGT50-10_IMG50_SK10-15_linear_old
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT50-10_IMG50_SK10-15_linear_old &
mkdir -p ./exp/AGT50-10_IMG10_SK4-15_linear_old
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT50-10_IMG10_SK4-15_linear_old 
mkdir -p ./exp/AGT50-10_IMG50_SK4-15_linear_old
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT50-10_IMG50_SK4-15_linear_old &
mkdir -p ./exp/AGT50-25_IMG10_SK10-15_linear_old
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT50-25_IMG10_SK10-15_linear_old &
mkdir -p ./exp/AGT50-25_IMG50_SK10-15_linear_old
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT50-25_IMG50_SK10-15_linear_old &
mkdir -p ./exp/AGT50-25_IMG10_SK4-15_linear_old
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT50-25_IMG10_SK4-15_linear_old &
mkdir -p ./exp/AGT50-25_IMG50_SK4-15_linear_old
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT50-25_IMG50_SK4-15_linear_old 
mkdir -p ./exp/AGT50-40_IMG10_SK10-15_linear_old
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT50-40_IMG10_SK10-15_linear_old &
mkdir -p ./exp/AGT50-40_IMG50_SK10-15_linear_old
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT50-40_IMG50_SK10-15_linear_old &
mkdir -p ./exp/AGT50-40_IMG10_SK4-15_linear_old
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT50-40_IMG10_SK4-15_linear_old &
mkdir -p ./exp/AGT50-40_IMG50_SK4-15_linear_old
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT50-40_IMG50_SK4-15_linear_old &
mkdir -p ./exp/AGT100-20_IMG10_SK10-15_linear_old
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT100-20_IMG10_SK10-15_linear_old 
mkdir -p ./exp/AGT100-20_IMG50_SK10-15_linear_old
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT100-20_IMG50_SK10-15_linear_old &
mkdir -p ./exp/AGT100-20_IMG10_SK4-15_linear_old
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT100-20_IMG10_SK4-15_linear_old &
mkdir -p ./exp/AGT100-20_IMG50_SK4-15_linear_old
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT100-20_IMG50_SK4-15_linear_old &
mkdir -p ./exp/AGT100-50_IMG10_SK10-15_linear_old
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT100-50_IMG10_SK10-15_linear_old &
mkdir -p ./exp/AGT100-50_IMG50_SK10-15_linear_old
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT100-50_IMG50_SK10-15_linear_old 
mkdir -p ./exp/AGT100-50_IMG10_SK4-15_linear_old
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT100-50_IMG10_SK4-15_linear_old &
mkdir -p ./exp/AGT100-50_IMG50_SK4-15_linear_old
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT100-50_IMG50_SK4-15_linear_old &
mkdir -p ./exp/AGT100-80_IMG10_SK10-15_linear_old
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT100-80_IMG10_SK10-15_linear_old &
mkdir -p ./exp/AGT100-80_IMG50_SK10-15_linear_old
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT100-80_IMG50_SK10-15_linear_old &
mkdir -p ./exp/AGT100-80_IMG10_SK4-15_linear_old
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net pretrain-linear_old --logdir ./exp/AGT100-80_IMG10_SK4-15_linear_old 
mkdir -p ./exp/AGT100-80_IMG50_SK4-15_linear_old
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net pretrain-linear_old --logdir ./exp/AGT100-80_IMG50_SK4-15_linear_old &
