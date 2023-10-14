
#!/bin/bash

# Function to check if a string is a palindrome
is_palindrome() {
  local string="$1"
  local reversed=""
  local len=${#string}

  for (( i=len-1; i>=0; i-- )); do
    reversed="${reversed}${string:$i:1}"
  done

  if [ "$string" = "$reversed" ]; then
    echo "The string is a palindrome."
  else
    echo "The string is not a palindrome."
  fi
}

# Main script
read -p "Enter a string: " input_string

# Remove leading and trailing whitespace
input_string="${input_string// /}"

# Convert to lowercase (optional, you can remove this line if case-sensitive)
input_string=$(echo "$input_string" | tr '[:upper:]' '[:lower:]')

is_palindrome "$input_string"


# output 

# $ ./palindrom.sh
# Enter a string: rar
# The string is a palindrome.
