#!/bin/bash

# Function to check if a number is prime
is_prime() {
  local num="$1"
  if [ "$num" -le 1 ]; then
    return 1  # Not a prime
  fi

  for ((i = 2; i * i <= num; i++)); do
    if [ "$((num % i))" -eq 0 ]; then
      return 1  # Not a prime
    fi
  done

  return 0  # Prime
}

# Main script
echo "Prime numbers from 1 to 300:"
for ((num = 2; num <= 300; num++)); do
  is_prime "$num"
  if [ $? -eq 0 ]; then
    echo "$num"
  fi
done

# output 
# $ ./10_prime_1to300.sh
# Prime numbers from 1 to 300:
# 2
# 3
# 5
# 7
# 11
# 13
# 17
# 19
# 23
# 29
# 31
# 37
# 41
# 43
# 47
# 53
# 59
# 61
# 67
# 71
# 73
# 79
# 83
# 89
# 97
# 101
# 103
# 107
# 109
# 113
# 127
# 131
# 137
# 139
# 149
# 151
# 157
# 163
# 167
# 173
# 179
# 181
# 191
# 193
# 197
# 199
# 211
# 223
# 227
# 229
# 233
# 239
# 241
# 251
# 257
# 263
# 269
# 271
# 277
# 281
# 283
# 293
