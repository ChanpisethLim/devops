#!/bin/bash

# Prompt the user to enter the name of a file or directory
read -p "Enter the name of a file or directory: " name

# Check if the file or directory exists
if [ ! -e "$name" ]; then
    echo "Error: File or directory '$name' does not exist."
    exit 1
fi

# Check the type of the file or directory
if [ -f "$name" ]; then
    echo "$name is a regular file."
elif [ -d "$name" ]; then
    echo "$name is a directory."
else
    echo "$name is another type of file."
fi

# Perform an ls command with the long listing option
ls -l "$name"
