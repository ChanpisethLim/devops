#!/bin/bash

# Loop from 2 to 12
for ((i = 2; i <= 12; i++)); do
    old_folder="LAB$i"
    new_folder="LAB$(printf "%03d" $i)"
    
    # Check if the old folder exists
    if [ -d "$old_folder" ]; then
        # Rename the folder
        mv "$old_folder" "$new_folder"
        echo "Renamed folder: $old_folder to $new_folder"
    else
        echo "Folder does not exist: $old_folder"
    fi
done