#!/bin/bash

# Loop from 2 to 12
for ((i = 2; i <= 12; i++)); do
    folder="LAB$i"
    # Check if the folder already exists
    if [ ! -d "$folder" ]; then
        # Create the folder if it doesn't exist
        mkdir "$folder"
        echo "Created folder: $folder"
    else
        echo "Folder already exists: $folder"
    fi
done
