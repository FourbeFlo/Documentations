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
rm -rf FONDUE-LA-PRINT-16
rm -rf FONDUE-FR-PRINT-16
