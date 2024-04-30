#!/bin/bash
#deployment of the virtual environement for segmentation

#choose the module 
#for now we are on Python 3.9.6 but it could change and you have to find the right modules
module load CUDA/11.8.0 GCCcore/11.3.0 Python/3.9.6

#create the env
python3 -m venv yaltai-env
source ~/yaltai-env/bin/activate

# install the right packages
pip install --upgrade pip
pip install YALTAi
pip3 pip install torch==2.0.1 torchvision==0.15.2 torchaudio==2.0.2 torchtext==0.15.2 torchdata==0.6.1 --index-url https://download.pytorch.org/whl/cu117

deactivate

#this virtual environnement will be the one use by jupypter notebook kernel