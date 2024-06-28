#!/bin/env bash
# script for OCRized some data
# first try with cpu for big data

# try to htr without fondu (! for ocrized you need segmented-xml and png file)
# Load necessary modules.

module load CUDA/11.8.0 GCCcore/11.3.0 Python/3.9.6

# Activate a Python virtual environment from a folder named 'kraken-env' in the user's home directory.

source ~/kraken-env/bin/activate

# start the OCR for a result in alto on file already segmented. (the 2 codes line are to be improved) 

kraken -I data_segmented/* --alto segment -bl ocr -m model_copy/nfd_best.mlmodel

#zip the file 
zip -r altos_segmented.zip content/image/*xml


# use this command for a test result of a precise date (working)
kraken -I "data_segmented/2013099.xml" --suffix ".xml" --format-type alto -a ocr -m model_copy/nfd_best.mlmodel

# la ligne ci dessus fonction mais on obtient pas la segmentation désirée, 
#il faudra travailler les parametre en attendant utiliser fondu