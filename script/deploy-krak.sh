#!/bin/bash
module load CUDA/11.8.0 GCCcore/11.2.0 Python/3.9.6

python3 -m venv kraken-env
source ~/kraken-env/bin/activate

pip install --upgrade pip
pip install kraken albumentations
pip3 install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu118

deactivate
