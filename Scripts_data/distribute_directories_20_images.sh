#!/bin/bash

# Source directory containing all .jpeg and .jpg files
source_directory="/home/floriane/Documents/Lambert_Daneau/pesegmt_doc/Lefevre_var_003"

# Destination directory where subdirectories will be created
destination_directory="/home/floriane/Documents/Lambert_Daneau/pesegmt_doc/Lefevre_var_003/images"

# Create destination directory if it doesn't exist
mkdir -p "$destination_directory"

# Counter for subdirectories
dir_counter=1

# Create the first subdirectory before the loop
mkdir -p "$destination_directory/data$dir_counter"

# Counter for files in the current subdirectory
file_counter=0

# Iterate over each file in the source directory
for file_path in "$source_directory"/*.jpeg "$source_directory"/*.jpg; do
    # Check if the file exists (in case no files match the pattern)
    if [ -e "$file_path" ]; then
        # Move the file to the current subdirectory
        mv "$file_path" "$destination_directory/data$dir_counter/"

        # Increment file counter
        ((file_counter++))

        # Create a new subdirectory if it's the 20th file
        if [ "$file_counter" -eq 20 ]; then
            # Reset file counter
            file_counter=0

            # Increment subdirectory counter
            ((dir_counter++))

            # Create a new subdirectory
            mkdir -p "$destination_directory/data$dir_counter"
        fi
    fi
done

echo "Files distributed in data Folders."

# try to correct the 19 files issues
