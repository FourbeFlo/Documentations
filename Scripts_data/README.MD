
# `Script.sh`
## Naming Convention, and Data Management

This set of bash scripts automates the download and renaming of digital books, simplifies data management, and ensures smooth post-segmentation processing of large datasets on HPC systems. These datasets are specifically formatted for use in eScriptorium.

## Overview of Scripts

| Script                       | Working | In Testing | Under Development |
|------------------------------|---------|------------|-------------------|
| `download_erara.sh`           | Yes     | -          | -                 |
| `download_mdz.sh`             | Yes     | -          | -                 |
| `change_Defaultine.sh`        | Yes     | -          | -                 |
| `distribute_dir_20_images.sh` | Yes     | -          | -                 |
| `distribute_dir_20_xml.sh`    | Yes     | -          | -                 |
| `filter_jpg.sh`               | Yes     | -          | -                 |
| `download-rn.mdz.sh`          | Yes     | -          | Old Version       |
| `download-rn.erara.sh`        | Yes     | -          | Old Version       |

* **Y = Yes** (Working)
* **N = No** (Not Working)
* **\- = No Comment**

---

## Usage of the Scripts

### 1. Downloading Digital Books

The scripts below automate the download of digital books from the MDZ and e-rara platforms, renaming the files according to our standard conventions:

- **`download_*.sh`**: 
  - **MDZ**: Use the following syntax to download and rename files.
    ```
    run_script.sh [web_identifier] [start_index] [end_index]
    ./download_mdz.sh bsb11059254_ 1 5
    ```
    Example: The above command downloads and renames images from MDZ's digital book with identifier `bsb11059254_`, starting from image 1 and ending at image 5.

  - **e-rara**: For downloading and renaming e-rara files, use:
    ```
    run_script.sh [start_index] [end_index]
    ./download_erara.sh 2012883 20128980
    ```
    Example: This command downloads images from `2012883` to `20128980` and renames them accordingly.

### 2. Formatting Datasets for eScriptorium

To properly format datasets for eScriptorium, the following scripts are essential:

- **`change_Defaultine.sh`**: This script automatically renames the "default" type in Defaultline, which is preselected in eScriptorium. However, other lines need to be manually selected.
  
- **`distribute_dir_20_images.sh`** & **`distribute_dir_20_xml.sh`**: These scripts separate the dataset into folders containing 20 images and 20 XML files per folder. This prevents overwhelming the server when uploading large data batches.

### 3. Error Correction

In case of file mismatches during segmentation, this script helps you recover missing pairs:

- **`filter_jpg.sh`**: This script searches for `.jpg` files that do not have a corresponding XML file, a common error in segmentation failures. It helps to identify and recover missing pairs by isolating these files.

---
