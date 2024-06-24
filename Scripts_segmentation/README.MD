## Scripts_segmentation

### scripts description 

Some scripts still need to be improved to enable true automatization of the hpc cluster. 
* the sub_ script are batch for the training of the OCR
* the other are just normal bash script 


table of result: 

| scripts                      | working | on test | conception |
|------------------------------|---------|---------|------------|
| deploy_yaltai_env.sh         |Y        | N       |-           |
| prepare_data_seg.sh          |Y        | N       |-           |
| sub_script_segm_cpu.sh       |Y        | N       |-           |
| sub_script_segm_gpu.sh       |N        | N       |Yes         |

* Y=Yes
* N=No
* \- = no comment

for now the script.py are very simple so... they work! with the requirement.
for beginner there is a more commented version in the Notebook files.

personal note: for a batch script using gpu, take the same parameter as for the OCR. (save the idee...now just have to make the script...) 

### use of the script

1. Prepare the data for the segmentaion with the relevant file name : Documentation/Scripts_data/* then chose the script in function of the digital-library.    
2. Install the virtual environnement :  deploy_yaltai_env.sh 
3. prepare the segmentation :  prepare_data_seg.sh (downlaod the segmentation and the htr model.)
4. Segment : use the right script in function of the quatity of data : sbatch script or for a small quantity of data, you can use the Notebook (Documentations/Notebook/segmentation_for_light_dataset.ipynb)
  - now you a file segmented file.zip contaning your xml/alto files. 
5. Format data for escriptorium : "change_xml_file_name.py" (make the link between the image.file and the xml.file)


