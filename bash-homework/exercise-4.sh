#!/bin/bash

# Prompt user to input the directory
echo "Enter the directory path where you want to delete .swp files:"
read directory

# Check if the directory exists
if [ ! -d "$directory" ]; then
    echo "Error: Directory $directory does not exist."
    exit 1
fi

# Change to the specified directory
cd "$directory" || exit

# Delete .swp files in the directory
find . -type f -name "*.swp" -delete

echo "Deleted all .swp files in $directory"
