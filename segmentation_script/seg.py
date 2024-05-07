"""
The script assumes that you have installed the ultralytics library and have a segmentation model file
named 'seg_model.pt' available in the specified path.
in our case, use the requirement of yaltai-env
"""

from ultralytics import YOLO

# Load the segmentation model
model = YOLO("content/seg_model.pt")

# Get info about the model
model.info()

# Fuse PyTorch Conv2d and BatchNorm2d layers
model.fuse()

print("Segmentation model loaded")