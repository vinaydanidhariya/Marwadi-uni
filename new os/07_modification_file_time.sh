#!/bin/bash

# Function to display the last modification time of a file
display_last_modification_time() {
  read -p "Enter the filename: " filename

  if [ -e "$filename" ]; then
    modification_time=$(stat -c "%y" "$filename")
    echo "Last modification time of $filename: $modification_time"
  else
    echo "The file '$filename' does not exist."
  fi
}

# Main script
display_last_modification_time


# output 
# $ ./07_modification_file_time.sh
# Enter the filename: abc.txt
# Last modification time of abc.txt: 2023-10-04 12:02:55.825202300 +0530
