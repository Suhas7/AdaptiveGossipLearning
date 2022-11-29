#!/bin/bash

python3 main.py --num_agents 4 --num_class 10 --agent_info_mode 1dumb-balance --num_env_steps 500 --beta_net pretrain-sl_beta_linear_reg --logdir exp-balance/4-1dumb-balance-LR --comment exp-balance-4-1dumb-balance-LR
python3 main.py --num_agents 7 --num_class 10 --agent_info_mode 1dumb-balance --num_env_steps 500 --beta_net pretrain-sl_beta_linear_reg --logdir exp-balance/7-1dumb-balance-LR --comment exp-balance-7-1dumb-balance-LR
python3 main.py --num_agents 10 --num_class 10 --agent_info_mode 1dumb-balance --num_env_steps 500 --beta_net pretrain-sl_beta_linear_reg --logdir exp-balance/10-1dumb-balance-LR --comment exp-balance-10-1dumb-balance-LR

python3 main.py --num_agents 4 --num_class 10 --agent_info_mode 1dumb-balance --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/4-1dumb-balance-fix-0.5' --comment 'exp-balance-4-1dumb-balance-fix-0.5'
python3 main.py --num_agents 7 --num_class 10 --agent_info_mode 1dumb-balance --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/7-1dumb-balance-fix-0.5' --comment 'exp-balance-7-1dumb-balance-fix-0.5'
python3 main.py --num_agents 10 --num_class 10 --agent_info_mode 1dumb-balance --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/10-1dumb-balance-fix-0.5' --comment 'exp-balance-10-1dumb-balance-fix-0.5'

python3 main.py --num_agents 4 --num_class 10 --agent_info_mode 1dumb-balance --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/4-1dumb-balance-sl_beta_nn' --comment 'exp-balance-4-1dumb-balance-sl_beta_nn'
python3 main.py --num_agents 7 --num_class 10 --agent_info_mode 1dumb-balance --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/7-1dumb-balance-sl_beta_nn' --comment 'exp-balance-7-1dumb-balance-sl_beta_nn'
python3 main.py --num_agents 10 --num_class 10 --agent_info_mode 1dumb-balance --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/10-1dumb-balance-sl_beta_nn' --comment 'exp-balance-10-1dumb-balance-sl_beta_nn'


python3 main.py --num_agents 4 --num_class 10 --agent_info_mode 2dumb-balance --num_env_steps 500 --beta_net pretrain-sl_beta_linear_reg --logdir exp-balance/4-2dumb-balance-LR --comment exp-balance-4-2dumb-balance-LR
python3 main.py --num_agents 7 --num_class 10 --agent_info_mode 2dumb-balance --num_env_steps 500 --beta_net pretrain-sl_beta_linear_reg --logdir exp-balance/7-2dumb-balance-LR --comment exp-balance-7-2dumb-balance-LR
python3 main.py --num_agents 10 --num_class 10 --agent_info_mode 2dumb-balance --num_env_steps 500 --beta_net pretrain-sl_beta_linear_reg --logdir exp-balance/10-2dumb-balance-LR --comment exp-balance-10-2dumb-balance-LR

python3 main.py --num_agents 4 --num_class 10 --agent_info_mode 2dumb-balance --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/4-2dumb-balance-fix-0.5' --comment 'exp-balance-4-2dumb-balance-fix-0.5'
python3 main.py --num_agents 7 --num_class 10 --agent_info_mode 2dumb-balance --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/7-2dumb-balance-fix-0.5' --comment 'exp-balance-7-2dumb-balance-fix-0.5'
python3 main.py --num_agents 10 --num_class 10 --agent_info_mode 2dumb-balance --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/10-2dumb-balance-fix-0.5' --comment 'exp-balance-10-2dumb-balance-fix-0.5'

python3 main.py --num_agents 4 --num_class 10 --agent_info_mode 2dumb-balance --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/4-2dumb-balance-sl_beta_nn' --comment 'exp-balance-4-2dumb-balance-sl_beta_nn'
python3 main.py --num_agents 7 --num_class 10 --agent_info_mode 2dumb-balance --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/7-2dumb-balance-sl_beta_nn' --comment 'exp-balance-7-2dumb-balance-sl_beta_nn'
python3 main.py --num_agents 10 --num_class 10 --agent_info_mode 2dumb-balance --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/10-2dumb-balance-sl_beta_nn' --comment 'exp-balance-10-2dumb-balance-sl_beta_nn'


python3 main.py --num_agents 4 --num_class 10 --agent_info_mode 3dumb-balance --num_env_steps 500 --beta_net pretrain-sl_beta_linear_reg --logdir exp-balance/4-3dumb-balance-LR --comment exp-balance-4-3dumb-balance-LR
python3 main.py --num_agents 7 --num_class 10 --agent_info_mode 3dumb-balance --num_env_steps 500 --beta_net pretrain-sl_beta_linear_reg --logdir exp-balance/7-3dumb-balance-LR --comment exp-balance-7-3dumb-balance-LR
python3 main.py --num_agents 10 --num_class 10 --agent_info_mode 3dumb-balance --num_env_steps 500 --beta_net pretrain-sl_beta_linear_reg --logdir exp-balance/10-3dumb-balance-LR --comment exp-balance-10-3dumb-balance-LR

python3 main.py --num_agents 4 --num_class 10 --agent_info_mode 3dumb-balance --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/4-3dumb-balance-fix-0.5' --comment 'exp-balance-4-3dumb-balance-fix-0.5'
python3 main.py --num_agents 7 --num_class 10 --agent_info_mode 3dumb-balance --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/7-3dumb-balance-fix-0.5' --comment 'exp-balance-7-3dumb-balance-fix-0.5'
python3 main.py --num_agents 10 --num_class 10 --agent_info_mode 3dumb-balance --num_env_steps 500 --beta_net 'fix-0.5' --logdir 'exp-balance/10-3dumb-balance-fix-0.5' --comment 'exp-balance-10-3dumb-balance-fix-0.5'

python3 main.py --num_agents 4 --num_class 10 --agent_info_mode 3dumb-balance --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/4-3dumb-balance-sl_beta_nn' --comment 'exp-balance-4-3dumb-balance-sl_beta_nn'
python3 main.py --num_agents 7 --num_class 10 --agent_info_mode 3dumb-balance --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/7-3dumb-balance-sl_beta_nn' --comment 'exp-balance-7-3dumb-balance-sl_beta_nn'
python3 main.py --num_agents 10 --num_class 10 --agent_info_mode 3dumb-balance --num_env_steps 500 --beta_net 'pretrain-sl_beta_nn' --logdir 'exp-balance/10-3dumb-balance-sl_beta_nn' --comment 'exp-balance-10-3dumb-balance-sl_beta_nn'
