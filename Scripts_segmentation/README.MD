Some scripts still need to be improved to enable true automatization of the hpc cluster. 
* the sub_ script are batch for the training of the OCR
* the other are just normal bash script 


table of result: 

| scripts                      | working | on test | conception |
|------------------------------|---------|---------|------------|
| deploy_seg_env.sh            |Y        | N       |-           |
| prepare_data_seg.sh          |Y        | N       |-           |
| sub_script_segm_cpu.sh       |Y        | N       |-           |
| sub_script_segm_gpu.sh       |N        | N       |Yes         |

* Y=Yes
* N=No
* \- = no comment

for now the script.py are very simple so... they work! with the requirement.
for beginner there is a more commented version in the Notebook files.
