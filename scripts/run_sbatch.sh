#!/bin/bash
#SBATCH --nodes=1
#SBATCH --gres=gpu:1
#SBATCH --cpus-per-task=2
#SBATCH --exclude=jagupard[4-8]
#SBATCH --mem=24G

# Print execute commands in the log.
set -x
conda_env=`whoami`-ue

source /u/nlp/anaconda/main/anaconda3/etc/profile.d/conda.sh
conda deactivate
conda activate $conda_env
cd $PWD

eval $1

