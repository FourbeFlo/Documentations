#!/bin/bash
module module load fosscuda/2020b Python/3.8.6

python3 -m venv kraken-env
source ~/kraken-env2/bin/activate

pip install --upgrade pip
pip install kraken albumentations
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

deactivate