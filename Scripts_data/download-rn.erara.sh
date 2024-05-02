#!/bin/bash

# Define the base URL and range of URLs
base_url="https://www.e-rara.ch/download/webcache/1000/"
start_index=9556086
end_index=9557819

# Loop through the range of URLs and download each file
for ((i=start_index; i<=end_index; i++)); do
    url="${base_url}${i}"
    echo "Downloading: $url"
    
    # Use wget to download the file
    wget "$url"
    
    # Rename the downloaded file to have the .png extension
    downloaded_file=$(basename "$url")
    mv "$downloaded_file" "${downloaded_file}.png"
done

echo "Download and renaming complete!"
