#!/bin/env bash
git clone https://github.com/FoNDUE-HTR/FONDUE-LA-PRINT-16
git clone https://github.com/FoNDUE-HTR/FONDUE-FR-PRINT-16
mkdir train_data
cd train_data
mkdir fondue
mkdir new
cd ..
mv FONDUE-LA-PRINT-16/data/* train_data/fondue
mv FONDUE-FR-PRINT-16/data/* train_data/fondue
mv Lambertus/data/* train_data/new
# Change directory to fondue and remove specific folders
cd ~/train_data/fondue || exit
rm -rf Bucer_Eph_b Cajetan_Rom Daneau_1-Tim Megander_Eph

cd ~
rm -rf FONDUE-LA-PRINT-16
rm -rf FONDUE-FR-PRINT-16
