#!/bin/bash

# Prompt the user for the path of a directory
read -p "Enter the path of a directory: " directory_path

# Check if the entered directory exists
if [ ! -d "$directory_path" ]; then
    echo "Error: '$directory_path' is not a directory or does not exist."
    exit 1
fi

# Iterate over all entries in the directory
for entry in "$directory_path"/*; do
    # Determine the type of file
    if [ -f "$entry" ]; then
        echo "'$entry' is a regular file."
    elif [ -d "$entry" ]; then
        echo "'$entry' is a directory."
    else
        echo "'$entry' is another type of file."
    fi

    # Perform an ls command against the file or directory with the long listing option
    ls -l "$entry"
done
