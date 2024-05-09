#!/bin/env bash

# Submission script prepared by S. Solfrini

# Request a GPU resource for a specific job.

#SBATCH --partition=shared-gpu
#SBATCH --time=00:15:00
#SBATCH --gpus=1
#SBATCH --output=kraken-test-2-%j.out
#SBATCH --mem=12GB
#SBATCH --cpus-per-task=8
#SBATCH --gres=gpu:1,VramPerGpu:2GB

# Load necessary modules.

module load CUDA/11.8.0 GCCcore/11.3.0 Python/3.9.6

# Activate a Python virtual environment from a folder named 'kraken-env' in the user's home directory.

source ~/kraken-env/bin/activate

# Start ketos test. This command will test the selected model (lambertus2.0) and store the results of the test in a file called test_fine-tuning_général.txt.

srun ketos test -d cuda:0 -f alto -m model.mlmodel -e split/test.txt > test_fine-tuning_générale.txt

# The script can be executed with the following command:
# sbatch NAME.sh
# sbatch scripts/submission_script_test_fine-tuning_90-10.sh