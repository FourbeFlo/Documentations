#!/bin/bash

# Directory where your files are located
DIRECTORY="/home/floriane/Documents/Lambert_Daneau/pesegmt_doc/Lefevre_var_002"

# Change to the directory
cd "$DIRECTORY"

# Loop through all the .jpg files in the directory
for jpg_file in *.jpg; do
    # Extract the base name without the extension
    base_name="${jpg_file%.jpg}"
    
    # Check if the corresponding .xml file exists
    if [[ ! -f "${base_name}.xml" ]]; then
        # If no corresponding .xml file exists, print the .jpg file (or process it)
        echo "$jpg_file"
        # Optionally, move the files to a different directory:
        mv "$jpg_file" /home/floriane/Documents/Lambert_Daneau/pesegmt_doc/Lefevre_var_002/image
    fi
done

# if the segmentation process doesn't finish completly, you can find back the unsegmented image with this script