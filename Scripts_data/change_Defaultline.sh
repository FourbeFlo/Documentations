#!/bin/bash

# Directory containing the XML files
DIRECTORY="/home/floriane/Documents/Lambert_Daneau/pesegmt_doc/Lefevre_var_003"

# Loop through each XML file in the directory
for xmlfile in "$DIRECTORY"/*.xml; do
  if [[ -f "$xmlfile" ]]; then
    # Use sed to replace the text in each file
    sed -i 's/<OtherTag ID="TYPE_1" LABEL="default"\/>/<OtherTag ID="TYPE_1" LABEL="DefaultLine"\/>/g' "$xmlfile"
    echo "Processed: $xmlfile"
  else
    echo "No XML files found in $DIRECTORY."
  fi
done

echo "Renaming completed!"
