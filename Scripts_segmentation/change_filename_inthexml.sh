#!/bin/bash

# Directory containing the XML files
DIRECTORY="/home/floriane/Documents/Lambert_Daneau/presegmt_doc/image/"

# Loop through each XML file in the directory
for xmlfile in "$DIRECTORY"*/*.xml; do
  if [[ -f "$xmlfile" ]]; then
    # Use sed to replace the full path with only the filename (last part after the last slash)
    sed -i 's|<fileName>.*\/\(.*\.jpg\)</fileName>|<fileName>\1</fileName>|' "$xmlfile"
  fi
done

echo "Renaming completed!"