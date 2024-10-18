# Script.sh : 

script bash for automatized download and naming convention according to our standards. 
Theses script simplifies the data managment after the pre-segmentation done of large amount of data with HPC on purpuse to use eScriptorium. 


table of result: 

| scripts                      | working | on test | conception |
|------------------------------|---------|---------|------------|
|download_erara.sh             |Y        |-        |-           |
|download_mdz.sh               |Y        |-        |-           |
|change_Defaultine.sh          |Y        |-        |-           |
|distribute_dir_20_images.sh   |Y        |-        |-           |
|distribute_dir_20_xml.sh      |Y        |-        |-           |
|filtre_jpg.sh                 |Y        |-        |-           |
|downlaod-rn.mdz.sh            |Y        |-        |old version |
|downlaod-rn.erara.sh          |Y        |-        |old version |

* Y=Yes
* N=No
* \- = no comment

# uses of the script

## downloading digitalbooks 
download_*.sh : download and rename the e-rara and mdz digitalbook according our standar. 
* for mdz : run_script.sh  [web indetifier] [start_index] [end_index] 
* for e-rara : run_script.sh [start_index] [end_index]

## formate your dataset to eScriptorium
* change_Defaultine.sh  : change the name of the "default" type in Defaultline already selected in eScriptorium. But you must selecte manualy the other lines
* distribute_dir allowed to separate your data set in folder of 20 images and 20 xml zipped file, so you do not overflow the server adding to much data.

## correcting failure 
* filter_jpg.sh enable to find back the file.jpg that do not have a xml file corresponding in case of failure of a part of the segmentation process. 
