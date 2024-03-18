#!/bin/bash

# Loop through numbers (2 to 12)
for i in {2..12}; do
  # Construct old name (without leading zeros)
  old_name="LAB$i"

  # Construct new folder name with leading zero
  if [ $i -lt 10 ]; then
    new_name="LAB$(printf "%02d" $i)"  
  else
    new_name="LAB$(printf "%03d" $i)"
  fi
  
  # Check if old folder exists
  if [ -d "$old_name" ]; then
    # Rename the folder using mv command
    mv "$old_name" "$new_name"
    echo "Renamed folder: $old_name to $new_name"
  else
    echo "Folder not found: $old_name"
  fi
done