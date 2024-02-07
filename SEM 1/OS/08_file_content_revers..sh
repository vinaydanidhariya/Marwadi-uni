#!/bin/bash

# Check if the input file exists
if [ ! -f "$1" ]; then
  echo "Input file not found."
  exit 1
fi

# Get the input file name from the command-line argument
input_file="$1"

# Check if the output file name is provided, if not, use a default name
if [ -z "$2" ]; then
  output_file="reversed_output.txt"
else
  output_file="$2"
fi

# Read the lines from the input file into an array
readarray -t lines < "$input_file"

# Reverse the array
reversed_lines=()
for ((i = ${#lines[@]} - 1; i >= 0; i--)); do
  reversed_lines+=("${lines[i]}")
done

# Write the reversed array to the output file
printf "%s\n" "${reversed_lines[@]}" > "$output_file"

echo "Data from '$input_file' has been written to '$output_file' in reverse order."
