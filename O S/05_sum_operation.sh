#!/bin/bash

# Function to check if a number is odd or even
check_odd_or_even() {
  local number="$1"
  if ((number % 2 == 0)); then
    echo "$number is even."
  else
    echo "$number is odd."
  fi
}

# Function to calculate the length of a number
calculate_length() {
  local number="$1"
  local length=${#number}
  echo "Length of $number is $length."
}

# Function to find the sum of the digits in a number
calculate_digit_sum() {
  local number="$1"
  local length=${#number}
  local sum=0
  for ((i = 0; i < length; i++)); do
    digit="${number:i:1}"
    sum=$((sum + digit))
  done
  echo "Sum of digits in $number is $sum."
}

# Main script
read -p "Enter a number: " input_number

# Check if the input is a valid integer
if [[ $input_number =~ ^[0-9]+$ ]]; then
  check_odd_or_even "$input_number"
  calculate_length "$input_number"
  calculate_digit_sum "$input_number"
else
  echo "Invalid input. Please enter a valid integer."
fi


# output
# $ ./05_sum_operation.sh
# Enter a number: 25
# 25 is odd.
# Length of 25 is 2.
# Sum of digits in 25 is 7.
