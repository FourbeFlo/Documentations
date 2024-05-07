# Scripts_OCR : 

Some scripts still need to be improved to enable true automation of the hpc cluster. 
* the sub_ script are batch for the training of the OCR
* the other are just normal bash script 

table of result: 

| scripts                      | working | on test | conception |
|------------------------------|---------|---------|------------|
| clean.sh                     | Y       | N       | -          |
| deploy_gen.sh                | Y       | N       | -          |
| deploy-krak.sh               | Y       | N       | -          |
| deploy_seg_env.sh            | N       | Y       | -          |
| deployspec.sh                | Y       | N       | -          |
| sub_script_finetunes_long.sh | Y       | N       | -          |
| sub_scipt_finetunes.sh       | Y       | N       | -          |
| sub_scipt_debug.sh           | N       | Y       | -          |




* Y=Yes
* N=No
* \- = no comment

NB: deploy_seg_env.sh  is working for it self the combination with a batch script need still to be tested
1.05.2024
