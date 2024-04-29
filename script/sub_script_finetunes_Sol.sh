#!/bin/env bash

# Submission script prepared by S. Solfrini

# Request a GPU resource for a specific job.

#SBATCH --partition=shared-gpu
#SBATCH --time=00:15:00
#SBATCH --gpus=1
#SBATCH --output=kraken-test-%j.out
#SBATCH --mem=12GB
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1,VramPerGpu:2GB

# Load necessary modules.

module load fosscuda/2020b Python/3.8.6

# Activate a Python virtual environment from a folder named 'kraken-env2' in the user's home directory.

source ~/kraken-env2/bin/activate

# downlaod the model
wget https://github.com/Gallicorpora/Segmentation-and-HTR-Models/releases/download/1.0.0/Gallicorpora+_best.mlmodel

# Start ketos test. This command will test the selected

srun ketos train -f alto -i Gallicorpora+_best.mlmodel --resize add -d cuda:0 -r 0.0001 --lag 10 --workers 8 --normalization NFD train_data/*/*/*.xml