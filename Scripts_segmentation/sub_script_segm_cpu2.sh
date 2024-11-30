#!/bin/bash

#SBATCH --partition=shared-cpu 
#SBATCH --time=00:30:00
#SBATCH --ntasks=6
#SBATCH --mem-per-cpu=4200 # in MB
#SBATCH --output=yaltai-out.%j 

# Load necessary modules.
module load CUDA/11.8.0 GCCcore/11.3.0 Python/3.9.6

# Activate a Python virtual environment from a folder named 'yaltai-env' in the user's home directory.
source ~/yaltai-env/bin/activate

#load the segmentation model 
python Scripts_segmentation/seg.py

#use the model with a cpu
srun yaltai kraken --device cpu -I "content/image/*/*" --suffix ".xml" segment --yolo content/seg_model.pt

# use the python script for changing the name of the file
. ~/Scripts_segmentation/change_filename_inthexml.sh
#zip the file 
zip -r altos_segmented.zip content/image/*/*xml

# avec le nouveau modele de segmentation compter
# pour 100 images 2h
# ce script concerne les données issue dont le chemin est plus complexe que pour le subscript1 le script python pour changer le nom des documents ne fonctionne pas. on utilisera un script bash "change_filename_inxml.sh"  
