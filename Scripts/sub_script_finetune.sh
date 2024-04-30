#!/bin/env bash

#SBATCH --partition=shared-gpu
#SBATCH --time=10:00:00
#SBATCH --gpus=2
#SBATCH --output=kraken-%j.out
#SBATCH --mem=30GB
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:2,VramPerGpu:20G

# Load necessary modules.

module load CUDA/11.8.0 GCCcore/11.3.0 Python/3.9.6

# Activate a Python virtual environment from a folder named 'kraken-env' in the user's home directory.

source ~/kraken-env/bin/activate

#downlaod the model
wget https://github.com/Gallicorpora/Segmentation-and-HTR-Models/releases/download/1.0.0/Gallicorpora+_best.mlmodel

# Start ketos training to fine-tune an existing model.
echo "KETOS training"
srun ketos train -f alto -i Gallicorpora+_best.mlmodel --resize add -d cuda:0 -r 0.0001 --lag 10 --workers 8 --normalization NFD train_data/*/*/*.xml

#clean
rm Gallicorpora+_best.mlmodel

# for now the script doesn't work there is a probleme with the memory and the 2 GPU uses