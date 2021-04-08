#!/bin/bash

SCR=/u/scr/eix/unlabeled_extrapolation
CHKPT_SCR=/tiger/u/eix/unlabeled_extrapolation/models
mkdir -p $CHKPT_SCR
mkdir -p $SCR/logs
partition=tiger
gpus=4
mem=117G
cpus=32

batch_size=256
max_epochs=100
domain=all

sbatch --partition $partition --gres=gpu:${gpus} --mem $mem -c $cpus --output $SCR/logs/swav_domainnet_all /u/scr/eix/run_sbatch.sh \
"source /u/nlp/anaconda/main/anaconda3/etc/profile.d/conda.sh && conda activate eix-ue && python ${SCR}/unlabeled_extrapolation/pretrain_swav.py  --gpus $gpus --num_workers $cpus --batch_size ${batch_size} --max_epochs ${max_epochs} --dataset domainnet --fast_dev_run 0 --checkpoint_dir ${CHKPT_SCR}/swav_domainnet_all --domain ${domain}"
