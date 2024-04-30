#!/bin/bash
# for now it doesn't work

# Variables
remote_user="goyf"  # Remote server username
remote_host="login2.baobab"  # Remote server IP or hostname
remote_file="/home/users/g/goyf/best_model.mlmodel"  # Path to the file on the remote server
local_dir="/home/floriane/Documents"  # Local directory where you want to save the file

# Download the file using scp
scp "$remote_user"@"$remote_host":"$remote_file" "$local_dir/"

# Check if scp command was successful
if [ $? -eq 0 ]; then
    echo "File downloaded successfully to local directory: $local_dir"
else
    echo "Error downloading file from remote server."
fi