
## `Scripts_segmentation`

### Script Descriptions

Some scripts require further improvements to fully automate tasks on the HPC cluster. 

- The `sub_` scripts are designed for batch processing.
- The other scripts are regular bash scripts used for segmentation-related tasks.

### Overview of Scripts

| Script                       | Working | In Testing | Under Development |
|------------------------------|---------|------------|-------------------|
| `deploy_yaltai_env.sh`       | Y      | N          | -                 |
| `prepare_data_seg.sh`        | Y      | N          | -                 |
| `sub_script_segm_cpu.sh`     | Y      | N          | -                 |
| `sub_script_segm_gpu.sh`     | N      | N          | Y                 |
| `seg.py`                     | Y      | N          | -                 |
| `change_xml_file_name.py`    | Y      | N          | Y                 |

* **Y = Yes** (Working)
* **N = No** (Not Working)
* **\- = No Comment**

---

The `script.py` function as module of the script.sh. For beginners, more detailed versions are available in the notebook files, with added comments for easier understanding.

**Personal Note**: When creating a batch script for GPU use, it should take the same parameters as the OCR training script. This idea is noted, and the script will be developed soon.

---

### Using the Scripts

Here are the steps to use the segmentation scripts:

1. **Prepare the data for segmentation**: 
   - Ensure that files are named correctly for the specific digital library. Documentation can be found in `Documentation/Scripts_data/downlaod_*.sh`.
   - Choose the appropriate script based on the digital library source.

2. **Install the virtual environment**: 
   - Use `deploy_yaltai_env.sh` to set up the required environment for segmentation tasks.

3. **Prepare the segmentation process**: 
   - Run `prepare_data_seg.sh` to download the necessary segmentation and HTR (Handwritten Text Recognition) models.

4. **Segmentation**:
   - For large datasets, use the HPC cluster with the appropriate batch script (`sbatch`): 
     - CPU-based segmentation: `sub_script_segm_cpu.sh`
     - GPU-based segmentation: `sub_script_segm_gpu.sh` (under development)
   - For smaller datasets, you can use the Jupyter notebook available at `Documentations/Notebook/segmentation_for_light_dataset.ipynb`.
   - After segmentation, you will have a `.zip` file containing the segmented XML/ALTO files.

5. **Format data for eScriptorium**: 
   - Use `change_xml_file_name.py` to align the image file names with their corresponding XML file names, ensuring compatibility with eScriptorium.

---
