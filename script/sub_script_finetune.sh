#!/bin/env bash

#SBATCH --partition=shared-gpu
#SBATCH --time=08:00:00
#SBATCH --gpus=2
#SBATCH --output=kraken-%j.out
#SBATCH --mem=34GB
#SBATCH --ntasks-per-node=12
#SBATCH --gres=gpu:2,VramPerGpu:24G

module load CUDA/11.8.0 GCCcore/11.2.0 GCCcore/11.3.0 Python/3.9.6
source ~/kraken-env/bin/activate
wget https://github.com/Gallicorpora/Segmentation-and-HTR-Models/releases/download/1.0.0/Gallicorpora+_best.mlmodel

echo "KETOS training"
srun ketos train -f alto -i Gallicorpora+_best.mlmodel --resize add -d cuda:0 -r 0.0001 --lag 10 --workers 12 --normalization NFD train_data/*/*/*.xml

rm Gallicorpora+_best.mlmodel