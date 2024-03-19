#!/bin/bash

# Prompt the user to input the filename
read -p "Enter the filename you want to delete: " filename

# Prompt the user to input the directory (optional)
read -p "Enter the directory path (press Enter for current directory): " directory

# If directory is not provided, use the current directory
if [ -z "$directory" ]; then
    directory="."
fi

# Check if the file exists
if [ ! -e "$directory/$filename" ]; then
    echo "File $filename does not exist in directory $directory"
    exit 1
fi

# Delete the file
rm "$directory/$filename"
echo "File $filename deleted successfully from directory $directory"
