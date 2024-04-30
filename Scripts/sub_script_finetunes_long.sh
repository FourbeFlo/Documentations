#!/bin/env bash

# Submission script prepared by S. Solfrini and costumized by F. Goy

# Request a GPU resource for a specific job.

#SBATCH --partition=shared-gpu
#SBATCH --time=15:00:00
#SBATCH --gpus=1
#SBATCH --output=kraken-%j.out
#SBATCH --mem=12GB
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1,VramPerGpu:2GB

# Load necessary modules.

module load CUDA/11.8.0 GCCcore/11.3.0 Python/3.9.6

# Activate a Python virtual environment from a folder named 'kraken-env' in the user's home directory.

source ~/kraken-env/bin/activate

#downlaod the model
wget https://github.com/Gallicorpora/Segmentation-and-HTR-Models/releases/download/1.0.0/Gallicorpora+_best.mlmodel

# Print training start message.

echo "KETOS training"

# Start ketos training to fine-tune an existing model.

srun ketos train -f alto -i Gallicorpora+_best.mlmodel --resize add -d cuda:0 -r 0.0001 --lag 10 --workers 8 --normalization NFD train_data/*/*/*.xml

# The best model will be automatically selected and will be labelled: MODEL_NAME_best.mlmodel
# Now that you have a model, you can test it on the test.txt data.

# The script can be executed with the following command:
# sbatch NAME.sh
# sbatch scripts/Documentations/script/sub_script_finetunes_long.sh

#personal note : the script is working but there is not enough time for my training
#it almost work I try it with 15h (30.04.2024) 