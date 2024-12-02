#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file_name>"
    exit 1
fi
# variable 
file_name=$1
# Source directory containing all file.xml
source_directory="/home/floriane/Documents/Lambert_Daneau/presegmt_doc/images/$1"

# Destination directory where subdirectories will be created
destination_directory="/home/floriane/Documents/Lambert_Daneau/presegmt_doc/images/$1/XML"

# Create destination directory if it doesn't exist
mkdir -p "$destination_directory"

# Counter for subdirectories
dir_counter=1

# Create the first subdirectory before the loop
mkdir -p "$destination_directory/data$dir_counter"

# Counter for files in the current subdirectory
file_counter=0

# Iterate over each file in the source directory
for file_path in "$source_directory"/*.xml; do
    # Move the file to the current subdirectory
    mv "$file_path" "$destination_directory/data$dir_counter/"

    # Increment file counter
    ((file_counter++))

    # Create a new subdirectory if it's the 21th file
    if [ "$file_counter" -eq 20 ]; then
        # Reset file counter
        file_counter=0

        # Increment subdirectory counter
        ((dir_counter++))

        # Create a new subdirectory
        mkdir -p "$destination_directory/data$dir_counter"
    fi
done

echo "Files distributed."

# Zipping each directory from data1 to dataN and removing the directories afterward
for i in $(seq 1 "$dir_counter"); do
    # Move into the subdirectory and zip the files, excluding the folder itself
    cd "$destination_directory/data$i" || { echo "Failed to enter directory: data$i"; exit 1; }
    
    # Create zip file
    zip -r "../data$i.zip" *.xml
    
    # Move back to the destination directory
    cd "$destination_directory" || exit 1
    
    # Remove the subdirectory after zipping
    rm -r "data$i"
done

echo "Zip files complete. Directories removed."


