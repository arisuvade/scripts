#!/bin/bash

# Source directory path
source_directory="BACKUP/DCIM/Screenshots/"

# Destination directory on Android device
destination_directory="storage/self/primary/Screenshots/"

# List all files in the source directory
files=$(ls "$source_directory")

# Loop through the files and push them to the Android device
for file_name in $files; do
    # Construct the source and destination paths
    source_path="$source_directory$file_name"
    destination_path="$destination_directory$file_name"

    # Use `adb push` command to transfer the file to the Android device
    adb push "$source_path" "$destination_path"
done

echo "Files pushed successfully!"
