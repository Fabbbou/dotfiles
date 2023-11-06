#!/bin/bash

# Check if the required arguments have been passed and are directories
if [ ! -d "$1" ]; then
    echo "Error: Source folder '$1' does not exist or is not a directory"
    exit 1
fi

if [ ! -d "$2" ]; then
    echo "Target folder '$2' does not exist. Creating it now..."
    mkdir -p "$2"
fi

# Create hard links from all files in source folder to target folder

#(details:
# Find all files in the source folder and create hard links in the target folder
# using a null delimiter to handle files with spaces in their names)

find "$1" -type f -print0 | while read -d $'\0' file; do
    # Get the filename from the full file path
    target_file="$(basename "$file")"
    # Create a hard link for the file in the target folder
    ln "$file" "$2/$target_file"
done

echo "Hard links created from '$1' to '$2'"
exit 0
