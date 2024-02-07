#!/bin/bash

# Function to delete zero-sized files
delete_zero_sized_files() {
  local directory="$1"

  if [ -d "$directory" ]; then
    # Use the find command to locate and delete zero-sized files
    find "$directory" -type f -size 0 -exec rm {} \;
    echo "Zero-sized files in '$directory' and its sub-directories have been deleted."
  else
    echo "The directory '$directory' does not exist."
  fi
}

# Main script
read -p "Enter the directory path: " target_directory
delete_zero_sized_files "$target_directory"

# output
# $ ./09_delete_zero_sized.sh
# Enter the directory path: ./
# Zero-sized files in './' and its sub-directories have been deleted.
