#!/bin/bash
#deployment of the virtual environement

#choose the module 
#for now we are on Python 3.9.6 but it could change and you have to find the right modules
module load CUDA/11.8.0 GCCcore/11.3.0 Python/3.9.6

#create the env
python3 -m venv kraken-env
source ~/kraken-env/bin/activate

# install the right packages
pip install --upgrade pip
pip install kraken albumentations
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

deactivate