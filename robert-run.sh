python3 main.py --num_agents 5 --num_class 10 --agent_info_mode 'ndumb-balance-1' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/5-0.3-1-fix-0.5' --comment '5-0.3-1-fix-0.5' &
python3 main.py --num_agents 5 --num_class 10 --agent_info_mode 'ndumb-balance-1' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/5-0.3-1-pretrain-sl_beta_linear_reg' --comment '5-0.3-1-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 5 --num_class 10 --agent_info_mode 'ndumb-balance-1' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/5-0.3-1-pretrain-sl_beta_nn' --comment '5-0.3-1-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 5 --num_class 10 --agent_info_mode 'ndumb-balance-2' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/5-0.5-2-fix-0.5' --comment '5-0.5-2-fix-0.5' &
python3 main.py --num_agents 5 --num_class 10 --agent_info_mode 'ndumb-balance-2' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/5-0.5-2-pretrain-sl_beta_linear_reg' --comment '5-0.5-2-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 5 --num_class 10 --agent_info_mode 'ndumb-balance-2' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/5-0.5-2-pretrain-sl_beta_nn' --comment '5-0.5-2-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 5 --num_class 10 --agent_info_mode 'ndumb-balance-3' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/5-0.7-3-fix-0.5' --comment '5-0.7-3-fix-0.5' &
python3 main.py --num_agents 5 --num_class 10 --agent_info_mode 'ndumb-balance-3' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/5-0.7-3-pretrain-sl_beta_linear_reg' --comment '5-0.7-3-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 5 --num_class 10 --agent_info_mode 'ndumb-balance-3' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/5-0.7-3-pretrain-sl_beta_nn' --comment '5-0.7-3-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 5 --num_class 10 --agent_info_mode 'ndumb-balance-4' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/5-0.9-4-fix-0.5' --comment '5-0.9-4-fix-0.5' &
python3 main.py --num_agents 5 --num_class 10 --agent_info_mode 'ndumb-balance-4' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/5-0.9-4-pretrain-sl_beta_linear_reg' --comment '5-0.9-4-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 5 --num_class 10 --agent_info_mode 'ndumb-balance-4' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/5-0.9-4-pretrain-sl_beta_nn' --comment '5-0.9-4-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-1' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/15-0.1-1-fix-0.5' --comment '15-0.1-1-fix-0.5' &
python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-1' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/15-0.1-1-pretrain-sl_beta_linear_reg' --comment '15-0.1-1-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-1' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/15-0.1-1-pretrain-sl_beta_nn' --comment '15-0.1-1-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-4' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/15-0.3-4-fix-0.5' --comment '15-0.3-4-fix-0.5' &
python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-4' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/15-0.3-4-pretrain-sl_beta_linear_reg' --comment '15-0.3-4-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-4' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/15-0.3-4-pretrain-sl_beta_nn' --comment '15-0.3-4-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-7' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/15-0.5-7-fix-0.5' --comment '15-0.5-7-fix-0.5' &
python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-7' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/15-0.5-7-pretrain-sl_beta_linear_reg' --comment '15-0.5-7-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-7' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/15-0.5-7-pretrain-sl_beta_nn' --comment '15-0.5-7-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-10' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/15-0.7-10-fix-0.5' --comment '15-0.7-10-fix-0.5' &
python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-10' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/15-0.7-10-pretrain-sl_beta_linear_reg' --comment '15-0.7-10-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-10' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/15-0.7-10-pretrain-sl_beta_nn' --comment '15-0.7-10-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-13' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/15-0.9-13-fix-0.5' --comment '15-0.9-13-fix-0.5' &
python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-13' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/15-0.9-13-pretrain-sl_beta_linear_reg' --comment '15-0.9-13-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 15 --num_class 10 --agent_info_mode 'ndumb-balance-13' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/15-0.9-13-pretrain-sl_beta_nn' --comment '15-0.9-13-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-5' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/50-0.1-5-fix-0.5' --comment '50-0.1-5-fix-0.5' &
python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-5' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/50-0.1-5-pretrain-sl_beta_linear_reg' --comment '50-0.1-5-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-5' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/50-0.1-5-pretrain-sl_beta_nn' --comment '50-0.1-5-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-15' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/50-0.3-15-fix-0.5' --comment '50-0.3-15-fix-0.5' &
python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-15' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/50-0.3-15-pretrain-sl_beta_linear_reg' --comment '50-0.3-15-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-15' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/50-0.3-15-pretrain-sl_beta_nn' --comment '50-0.3-15-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-25' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/50-0.5-25-fix-0.5' --comment '50-0.5-25-fix-0.5' &
python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-25' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/50-0.5-25-pretrain-sl_beta_linear_reg' --comment '50-0.5-25-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-25' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/50-0.5-25-pretrain-sl_beta_nn' --comment '50-0.5-25-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-35' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/50-0.7-35-fix-0.5' --comment '50-0.7-35-fix-0.5' &
python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-35' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/50-0.7-35-pretrain-sl_beta_linear_reg' --comment '50-0.7-35-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-35' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/50-0.7-35-pretrain-sl_beta_nn' --comment '50-0.7-35-pretrain-sl_beta_nn' &
wait

python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-45' --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/50-0.9-45-fix-0.5' --comment '50-0.9-45-fix-0.5' &
python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-45' --num_env_steps 500 --beta_net 'pretrain-sl_beta_linear_reg' --logdir 'exp-balance/50-0.9-45-pretrain-sl_beta_linear_reg' --comment '50-0.9-45-pretrain-sl_beta_linear_reg' &
python3 main.py --num_agents 50 --num_class 10 --agent_info_mode 'ndumb-balance-45' --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/50-0.9-45-pretrain-sl_beta_nn' --comment '50-0.9-45-pretrain-sl_beta_nn' &
wait

