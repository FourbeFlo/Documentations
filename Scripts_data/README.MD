
# `Script.sh` : Automated Download, Naming Convention, Data Managments

This set of bash scripts automates the download and renaming of digital books, managing data more effectively after the pre-segmentation process of large datasets on HPC systems. These datasets are intended for use in eScriptorium.

## Overview of Scripts

| Script                       | Working | In Testing | Under Development |
|------------------------------|---------|------------|-------------------|
| `download_erara.sh`           | Yes     | -         | -                 |
| `download_mdz.sh`             | Yes     | -         | -                 |
| `change_Defaultine.sh`        | Yes     | -         | -                 |
| `distribute_dir_20_images.sh` | Yes     | -         | -                 |
| `distribute_dir_20_xml.sh`    | Yes     | -         | -                 |
| `filter_jpg.sh`               | Yes     | -         | -                 |
| `download-rn.mdz.sh`          | Yes     | -         | Old Version       |
| `download-rn.erara.sh`        | Yes     | -         | Old Version       |

* **Y = Yes** (Working)
* **N = No** (Not Working)
* **\- = No Comment**

---

## Usage of the Scripts

### 1. Downloading Digital Books

- **`download_*.sh`**: These scripts download and rename e-rara and MDZ digital books according to the defined naming standards.
  - For MDZ:
    ```
    run_script.sh [web_identifier] [start_index] [end_index]
    ```
  - For e-rara:
    ```
    run_script.sh [start_index] [end_index]
    ```

### 2. Formatting Datasets for eScriptorium

- **`change_Defaultine.sh`**: This script renames the "default" type in the Defaultline format, already selected in eScriptorium. Other lines must be selected manually.
  
- **`distribute_dir_20_images.sh`** and **`distribute_dir_20_xml.sh`**: These scripts separate your dataset into folders containing 20 images and 20 XML files each. This prevents server overload when uploading large amounts of data.

### 3. Error Correction

- **`filter_jpg.sh`**: This script identifies `.jpg` files that do not have a corresponding XML file in cases where segmentation processes fail. It allows you to recover missing pairs.

---
