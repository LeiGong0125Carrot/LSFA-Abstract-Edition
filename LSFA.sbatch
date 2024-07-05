#!/bin/bash
#SBATCH --ntasks=1
#SBATCH -A zhangmlgroup
#SBATCH --mem=100G
#SBATCH -p gpu
#SBATCH --gres=gpu:a100:1
#SBATCH --cpus-per-task=48
#SBATCH --time=1-00:00:00
#SBATCH --output=logs/%x-%j.out
#SBATCH --error=logs/%x-%j.err

# Your command goes here
module load anaconda
conda activate LSFA-env
python main.py
conda deactivate