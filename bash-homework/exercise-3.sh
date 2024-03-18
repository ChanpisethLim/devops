#!/bin/bash

# Loop through numbers (2 to 12)
for i in {2..12}; do
  # define folder
  if [ $i -lt 10 ]; then
    folder_name="LAB$(printf "%02d" $i)"  
  else
    folder_name="LAB$(printf "%03d" $i)"
  fi

# Convert entry name to lowercase
  lowercase_name="${folder_name,,}"
  
  # Check lowercase
  if [ "$folder_name" != "$lowercase_name" ]; then
    # Rename the folder using mv command
    mv "$folder_name" "$lowercase_name"
    echo "Renamed folder: $folder_name to $lowercase_name"
  fi
done