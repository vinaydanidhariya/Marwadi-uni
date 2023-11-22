#!/bin/bash

# Function to accept and replace a string
replace_string() {
  read -p "Enter the original string: " original_string
  read -p "Enter the replacement string: " replacement_string
  read -p "Enter the text where you want to replace: " text_to_replace

  # Use sed to replace the original string with the replacement string in the text
  new_text=$(echo "$text_to_replace" | sed "s/$original_string/$replacement_string/g")

  echo "Original text: $text_to_replace"
  echo "Replaced text: $new_text"
}

# Main script
replace_string


# output 
# $ ./06replace_string.sh
# Enter the original string: rahul
# Enter the replacement string: vinay
# Enter the text where you want to replace: vinay is brinlient and rahul is execlent
# Original text: vinay is brinlient and rahul is execlent
# Replaced text: vinay is brinlient and vinay is execlent
