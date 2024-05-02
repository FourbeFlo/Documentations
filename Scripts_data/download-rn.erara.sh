#!/bin/bash

# Define the base URL and range of URLs

base_url="https://www.e-rara.ch/download/webcache/1000/"
start_index=2012883
end_index=2013443

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

#using the script

#in e-rara only the final part of the link is the file's identifiant
#for section that you want to downlaod
#take the identifiant of the first identifiant as start_index it looks like this "9557819"
#take the indentifiant of the last indentifiant as end_index
#the script downlaod alle the data inbetween 

#more information on the generale Guideline "comming soon"
