#!/bin/env bash

# downlaod the test data in the workspace
# prepare segementation directories
mkdir -p content/image
# add the test_data
cp test/*/* content/image/

#downlaod the model the segmentation model for the region
wget https://github.com/FoNDUE-HTR/Documentation/releases/download/v.0.9/segmonto_boscaiola.pt 
mv segmonto_boscaiola.pt content/seg_model.pt

#downlaod a kraken model for the line 
wget https://github.com/FourbeFlo/Lambertus/releases/download/model/Lambertus_03_best.mlmodel
mv Lambertus_03_best.mlmodel content/htr_model.mlmodel

# now you can use the batch script => sub_script_seg.sh 