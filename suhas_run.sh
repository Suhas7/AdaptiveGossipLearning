mkdir -p exp
mkdir -p suhas_script
mkdir -p ./suhas_script/AGT10-2_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT10-2_IMG10_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT10-2_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT10-2_IMG10_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT10-2_IMG10_SK10-15_heuristic-dlr
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT10-2_IMG10_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT10-2_IMG10_SK10-15_heuristic
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT10-2_IMG10_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT10-2_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT10-2_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr 
mkdir -p ./suhas_script/AGT10-2_IMG10_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT10-2_IMG10_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT10-2_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT10-2_IMG50_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT10-2_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT10-2_IMG50_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT10-2_IMG50_SK10-15_heuristic-dlr
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT10-2_IMG50_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT10-2_IMG50_SK10-15_heuristic
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT10-2_IMG50_SK10-15_heuristic 
mkdir -p ./suhas_script/AGT10-2_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT10-2_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT10-2_IMG50_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 10 --num_dumb 2 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT10-2_IMG50_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT10-2_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT10-2_IMG10_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT10-2_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT10-2_IMG10_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT10-2_IMG10_SK4-15_heuristic-dlr
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT10-2_IMG10_SK4-15_heuristic-dlr 
mkdir -p ./suhas_script/AGT10-2_IMG10_SK4-15_heuristic
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT10-2_IMG10_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT10-2_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT10-2_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT10-2_IMG10_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT10-2_IMG10_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT10-2_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT10-2_IMG50_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT10-2_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT10-2_IMG50_SK4-15_fix-1.0 
mkdir -p ./suhas_script/AGT10-2_IMG50_SK4-15_heuristic-dlr
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT10-2_IMG50_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT10-2_IMG50_SK4-15_heuristic
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT10-2_IMG50_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT10-2_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT10-2_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT10-2_IMG50_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 10 --num_dumb 2 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT10-2_IMG50_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT10-5_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT10-5_IMG10_SK10-15_fix-0.5 
mkdir -p ./suhas_script/AGT10-5_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT10-5_IMG10_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT10-5_IMG10_SK10-15_heuristic-dlr
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT10-5_IMG10_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT10-5_IMG10_SK10-15_heuristic
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT10-5_IMG10_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT10-5_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT10-5_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT10-5_IMG10_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT10-5_IMG10_SK10-15_sl_20a10d_linear.pkl 
mkdir -p ./suhas_script/AGT10-5_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT10-5_IMG50_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT10-5_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT10-5_IMG50_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT10-5_IMG50_SK10-15_heuristic-dlr
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT10-5_IMG50_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT10-5_IMG50_SK10-15_heuristic
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT10-5_IMG50_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT10-5_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT10-5_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr 
mkdir -p ./suhas_script/AGT10-5_IMG50_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 10 --num_dumb 5 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT10-5_IMG50_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT10-5_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT10-5_IMG10_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT10-5_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT10-5_IMG10_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT10-5_IMG10_SK4-15_heuristic-dlr
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT10-5_IMG10_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT10-5_IMG10_SK4-15_heuristic
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT10-5_IMG10_SK4-15_heuristic 
mkdir -p ./suhas_script/AGT10-5_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT10-5_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT10-5_IMG10_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT10-5_IMG10_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT10-5_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT10-5_IMG50_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT10-5_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT10-5_IMG50_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT10-5_IMG50_SK4-15_heuristic-dlr
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT10-5_IMG50_SK4-15_heuristic-dlr 
mkdir -p ./suhas_script/AGT10-5_IMG50_SK4-15_heuristic
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT10-5_IMG50_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT10-5_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT10-5_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT10-5_IMG50_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 10 --num_dumb 5 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT10-5_IMG50_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT10-8_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT10-8_IMG10_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT10-8_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT10-8_IMG10_SK10-15_fix-1.0 
mkdir -p ./suhas_script/AGT10-8_IMG10_SK10-15_heuristic-dlr
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT10-8_IMG10_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT10-8_IMG10_SK10-15_heuristic
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT10-8_IMG10_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT10-8_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT10-8_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT10-8_IMG10_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT10-8_IMG10_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT10-8_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT10-8_IMG50_SK10-15_fix-0.5 
mkdir -p ./suhas_script/AGT10-8_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT10-8_IMG50_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT10-8_IMG50_SK10-15_heuristic-dlr
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT10-8_IMG50_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT10-8_IMG50_SK10-15_heuristic
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT10-8_IMG50_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT10-8_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT10-8_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT10-8_IMG50_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 10 --num_dumb 8 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT10-8_IMG50_SK10-15_sl_20a10d_linear.pkl 
mkdir -p ./suhas_script/AGT10-8_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT10-8_IMG10_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT10-8_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT10-8_IMG10_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT10-8_IMG10_SK4-15_heuristic-dlr
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT10-8_IMG10_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT10-8_IMG10_SK4-15_heuristic
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT10-8_IMG10_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT10-8_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT10-8_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr 
mkdir -p ./suhas_script/AGT10-8_IMG10_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT10-8_IMG10_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT10-8_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT10-8_IMG50_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT10-8_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT10-8_IMG50_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT10-8_IMG50_SK4-15_heuristic-dlr
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT10-8_IMG50_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT10-8_IMG50_SK4-15_heuristic
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT10-8_IMG50_SK4-15_heuristic 
mkdir -p ./suhas_script/AGT10-8_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT10-8_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT10-8_IMG50_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 10 --num_dumb 8 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT10-8_IMG50_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT50-10_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT50-10_IMG10_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT50-10_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT50-10_IMG10_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT50-10_IMG10_SK10-15_heuristic-dlr
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT50-10_IMG10_SK10-15_heuristic-dlr 
mkdir -p ./suhas_script/AGT50-10_IMG10_SK10-15_heuristic
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT50-10_IMG10_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT50-10_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT50-10_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT50-10_IMG10_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT50-10_IMG10_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT50-10_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT50-10_IMG50_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT50-10_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT50-10_IMG50_SK10-15_fix-1.0 
mkdir -p ./suhas_script/AGT50-10_IMG50_SK10-15_heuristic-dlr
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT50-10_IMG50_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT50-10_IMG50_SK10-15_heuristic
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT50-10_IMG50_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT50-10_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT50-10_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT50-10_IMG50_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 50 --num_dumb 10 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT50-10_IMG50_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT50-10_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT50-10_IMG10_SK4-15_fix-0.5 
mkdir -p ./suhas_script/AGT50-10_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT50-10_IMG10_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT50-10_IMG10_SK4-15_heuristic-dlr
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT50-10_IMG10_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT50-10_IMG10_SK4-15_heuristic
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT50-10_IMG10_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT50-10_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT50-10_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT50-10_IMG10_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT50-10_IMG10_SK4-15_sl_20a10d_linear.pkl 
mkdir -p ./suhas_script/AGT50-10_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT50-10_IMG50_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT50-10_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT50-10_IMG50_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT50-10_IMG50_SK4-15_heuristic-dlr
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT50-10_IMG50_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT50-10_IMG50_SK4-15_heuristic
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT50-10_IMG50_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT50-10_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT50-10_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr 
mkdir -p ./suhas_script/AGT50-10_IMG50_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 50 --num_dumb 10 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT50-10_IMG50_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT50-25_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT50-25_IMG10_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT50-25_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT50-25_IMG10_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT50-25_IMG10_SK10-15_heuristic-dlr
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT50-25_IMG10_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT50-25_IMG10_SK10-15_heuristic
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT50-25_IMG10_SK10-15_heuristic 
mkdir -p ./suhas_script/AGT50-25_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT50-25_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT50-25_IMG10_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT50-25_IMG10_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT50-25_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT50-25_IMG50_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT50-25_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT50-25_IMG50_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT50-25_IMG50_SK10-15_heuristic-dlr
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT50-25_IMG50_SK10-15_heuristic-dlr 
mkdir -p ./suhas_script/AGT50-25_IMG50_SK10-15_heuristic
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT50-25_IMG50_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT50-25_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT50-25_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT50-25_IMG50_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 50 --num_dumb 25 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT50-25_IMG50_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT50-25_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT50-25_IMG10_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT50-25_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT50-25_IMG10_SK4-15_fix-1.0 
mkdir -p ./suhas_script/AGT50-25_IMG10_SK4-15_heuristic-dlr
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT50-25_IMG10_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT50-25_IMG10_SK4-15_heuristic
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT50-25_IMG10_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT50-25_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT50-25_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT50-25_IMG10_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT50-25_IMG10_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT50-25_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT50-25_IMG50_SK4-15_fix-0.5 
mkdir -p ./suhas_script/AGT50-25_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT50-25_IMG50_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT50-25_IMG50_SK4-15_heuristic-dlr
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT50-25_IMG50_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT50-25_IMG50_SK4-15_heuristic
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT50-25_IMG50_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT50-25_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT50-25_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT50-25_IMG50_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 50 --num_dumb 25 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT50-25_IMG50_SK4-15_sl_20a10d_linear.pkl 
mkdir -p ./suhas_script/AGT50-40_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT50-40_IMG10_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT50-40_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT50-40_IMG10_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT50-40_IMG10_SK10-15_heuristic-dlr
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT50-40_IMG10_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT50-40_IMG10_SK10-15_heuristic
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT50-40_IMG10_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT50-40_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT50-40_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr 
mkdir -p ./suhas_script/AGT50-40_IMG10_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT50-40_IMG10_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT50-40_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT50-40_IMG50_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT50-40_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT50-40_IMG50_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT50-40_IMG50_SK10-15_heuristic-dlr
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT50-40_IMG50_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT50-40_IMG50_SK10-15_heuristic
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT50-40_IMG50_SK10-15_heuristic 
mkdir -p ./suhas_script/AGT50-40_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT50-40_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT50-40_IMG50_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 50 --num_dumb 40 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT50-40_IMG50_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT50-40_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT50-40_IMG10_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT50-40_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT50-40_IMG10_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT50-40_IMG10_SK4-15_heuristic-dlr
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT50-40_IMG10_SK4-15_heuristic-dlr 
mkdir -p ./suhas_script/AGT50-40_IMG10_SK4-15_heuristic
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT50-40_IMG10_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT50-40_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT50-40_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT50-40_IMG10_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT50-40_IMG10_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT50-40_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT50-40_IMG50_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT50-40_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT50-40_IMG50_SK4-15_fix-1.0 
mkdir -p ./suhas_script/AGT50-40_IMG50_SK4-15_heuristic-dlr
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT50-40_IMG50_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT50-40_IMG50_SK4-15_heuristic
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT50-40_IMG50_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT50-40_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT50-40_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT50-40_IMG50_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 50 --num_dumb 40 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT50-40_IMG50_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT100-20_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT100-20_IMG10_SK10-15_fix-0.5 
mkdir -p ./suhas_script/AGT100-20_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT100-20_IMG10_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT100-20_IMG10_SK10-15_heuristic-dlr
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT100-20_IMG10_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT100-20_IMG10_SK10-15_heuristic
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT100-20_IMG10_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT100-20_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT100-20_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT100-20_IMG10_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT100-20_IMG10_SK10-15_sl_20a10d_linear.pkl 
mkdir -p ./suhas_script/AGT100-20_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT100-20_IMG50_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT100-20_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT100-20_IMG50_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT100-20_IMG50_SK10-15_heuristic-dlr
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT100-20_IMG50_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT100-20_IMG50_SK10-15_heuristic
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT100-20_IMG50_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT100-20_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT100-20_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr 
mkdir -p ./suhas_script/AGT100-20_IMG50_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 100 --num_dumb 20 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT100-20_IMG50_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT100-20_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT100-20_IMG10_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT100-20_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT100-20_IMG10_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT100-20_IMG10_SK4-15_heuristic-dlr
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT100-20_IMG10_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT100-20_IMG10_SK4-15_heuristic
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT100-20_IMG10_SK4-15_heuristic 
mkdir -p ./suhas_script/AGT100-20_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT100-20_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT100-20_IMG10_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT100-20_IMG10_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT100-20_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT100-20_IMG50_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT100-20_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT100-20_IMG50_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT100-20_IMG50_SK4-15_heuristic-dlr
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT100-20_IMG50_SK4-15_heuristic-dlr 
mkdir -p ./suhas_script/AGT100-20_IMG50_SK4-15_heuristic
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT100-20_IMG50_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT100-20_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT100-20_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT100-20_IMG50_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 100 --num_dumb 20 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT100-20_IMG50_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT100-50_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT100-50_IMG10_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT100-50_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT100-50_IMG10_SK10-15_fix-1.0 
mkdir -p ./suhas_script/AGT100-50_IMG10_SK10-15_heuristic-dlr
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT100-50_IMG10_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT100-50_IMG10_SK10-15_heuristic
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT100-50_IMG10_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT100-50_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT100-50_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT100-50_IMG10_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT100-50_IMG10_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT100-50_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT100-50_IMG50_SK10-15_fix-0.5 
mkdir -p ./suhas_script/AGT100-50_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT100-50_IMG50_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT100-50_IMG50_SK10-15_heuristic-dlr
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT100-50_IMG50_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT100-50_IMG50_SK10-15_heuristic
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT100-50_IMG50_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT100-50_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT100-50_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT100-50_IMG50_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 100 --num_dumb 50 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT100-50_IMG50_SK10-15_sl_20a10d_linear.pkl 
mkdir -p ./suhas_script/AGT100-50_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT100-50_IMG10_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT100-50_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT100-50_IMG10_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT100-50_IMG10_SK4-15_heuristic-dlr
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT100-50_IMG10_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT100-50_IMG10_SK4-15_heuristic
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT100-50_IMG10_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT100-50_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT100-50_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr 
mkdir -p ./suhas_script/AGT100-50_IMG10_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT100-50_IMG10_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT100-50_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT100-50_IMG50_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT100-50_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT100-50_IMG50_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT100-50_IMG50_SK4-15_heuristic-dlr
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT100-50_IMG50_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT100-50_IMG50_SK4-15_heuristic
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT100-50_IMG50_SK4-15_heuristic 
mkdir -p ./suhas_script/AGT100-50_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT100-50_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT100-50_IMG50_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 100 --num_dumb 50 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT100-50_IMG50_SK4-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT100-80_IMG10_SK10-15_fix-0.5
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT100-80_IMG10_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT100-80_IMG10_SK10-15_fix-1.0
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT100-80_IMG10_SK10-15_fix-1.0 &
mkdir -p ./suhas_script/AGT100-80_IMG10_SK10-15_heuristic-dlr
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT100-80_IMG10_SK10-15_heuristic-dlr 
mkdir -p ./suhas_script/AGT100-80_IMG10_SK10-15_heuristic
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT100-80_IMG10_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT100-80_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT100-80_IMG10_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT100-80_IMG10_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT100-80_IMG10_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT100-80_IMG50_SK10-15_fix-0.5
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT100-80_IMG50_SK10-15_fix-0.5 &
mkdir -p ./suhas_script/AGT100-80_IMG50_SK10-15_fix-1.0
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT100-80_IMG50_SK10-15_fix-1.0 
mkdir -p ./suhas_script/AGT100-80_IMG50_SK10-15_heuristic-dlr
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT100-80_IMG50_SK10-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT100-80_IMG50_SK10-15_heuristic
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT100-80_IMG50_SK10-15_heuristic &
mkdir -p ./suhas_script/AGT100-80_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT100-80_IMG50_SK10-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT100-80_IMG50_SK10-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 100 --num_dumb 80 --nskew 10 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT100-80_IMG50_SK10-15_sl_20a10d_linear.pkl &
mkdir -p ./suhas_script/AGT100-80_IMG10_SK4-15_fix-0.5
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-0.5  --log_dir ./suhas_script/AGT100-80_IMG10_SK4-15_fix-0.5 
mkdir -p ./suhas_script/AGT100-80_IMG10_SK4-15_fix-1.0
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net fix-1.0  --log_dir ./suhas_script/AGT100-80_IMG10_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT100-80_IMG10_SK4-15_heuristic-dlr
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT100-80_IMG10_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT100-80_IMG10_SK4-15_heuristic
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net heuristic  --log_dir ./suhas_script/AGT100-80_IMG10_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT100-80_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT100-80_IMG10_SK4-15_sl_20a10d_linear.pkl-dlr &
mkdir -p ./suhas_script/AGT100-80_IMG10_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 10 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT100-80_IMG10_SK4-15_sl_20a10d_linear.pkl 
mkdir -p ./suhas_script/AGT100-80_IMG50_SK4-15_fix-0.5
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-0.5  --log_dir ./suhas_script/AGT100-80_IMG50_SK4-15_fix-0.5 &
mkdir -p ./suhas_script/AGT100-80_IMG50_SK4-15_fix-1.0
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net fix-1.0  --log_dir ./suhas_script/AGT100-80_IMG50_SK4-15_fix-1.0 &
mkdir -p ./suhas_script/AGT100-80_IMG50_SK4-15_heuristic-dlr
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic --decay_lr --log_dir ./suhas_script/AGT100-80_IMG50_SK4-15_heuristic-dlr &
mkdir -p ./suhas_script/AGT100-80_IMG50_SK4-15_heuristic
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net heuristic  --log_dir ./suhas_script/AGT100-80_IMG50_SK4-15_heuristic &
mkdir -p ./suhas_script/AGT100-80_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl --decay_lr --log_dir ./suhas_script/AGT100-80_IMG50_SK4-15_sl_20a10d_linear.pkl-dlr 
mkdir -p ./suhas_script/AGT100-80_IMG50_SK4-15_sl_20a10d_linear.pkl
python3 main.py --num_agents 100 --num_dumb 80 --nskew 4 --topweight 15 --num_env_steps 400 --n_train_img 50 --beta_net sl_20a10d_linear.pkl  --log_dir ./suhas_script/AGT100-80_IMG50_SK4-15_sl_20a10d_linear.pkl &
