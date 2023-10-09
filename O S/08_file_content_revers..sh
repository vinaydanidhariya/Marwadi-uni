#!/bin/bash

# Function to reverse the content of a file into a new file
reverse_content_to_new_file() {
  read -p "Enter the input filename: " input_file
  read -p "Enter the output filename: " output_file

  if [ -e "$input_file" ]; then
    # Use tac to reverse the lines and save the result in the output file
    tac "$input_file" > "$output_file"
    echo "Data from '$input_file' has been reversed and saved to '$output_file'."
  else
    echo "The input file '$input_file' does not exist."
  fi
}

# Main script
reverse_content_to_new_file
