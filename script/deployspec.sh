#!/bin/env bash
# create the train data if FONDUE-LA-PRINT-16 and Lambertus contain similar data

#downlaod the repository
git clone https://github.com/FourbeFlo/Lambertus
git clone https://github.com/FoNDUE-HTR/FONDUE-LA-PRINT-16
git clone https://github.com/FoNDUE-HTR/FONDUE-FR-PRINT-16

#create the train directory
mkdir train_data
cd train_data
mkdir fondue
mkdir new
cd ..
mv FONDUE-LA-PRINT-16/data/* train_data/fondue
mv FONDUE-FR-PRINT-16/data/* train_data/fondue
mv Lambertus/data/* train_data/new
# openn train_data/fondue and remove the folders containing the similar datas
cd ~/train_data/fondue || exit
rm -rf Bucer_Eph_b Cajetan_Rom Daneau_1-Tim Megander_Eph

# clean
cd ~
rm -rf FONDUE-LA-PRINT-16
rm -rf FONDUE-FR-PRINT-16
rm -rf Lambertus
