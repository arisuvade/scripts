#!/bin/bash

# Check if any arguments are provided
if [ "$#" -eq 0 ]; then
  echo "Usage: ./incalc.sh <numbers separated by spaces>"
  exit 1
fi

# Initialize variables
sum=0
count=0

# Iterate through all input arguments
for num in "$@"; do
  # Add the current number to the sum
  sum=$((sum + num))
  # Increment the count of items
  count=$((count + 1))
done

# Output the results
echo "Income: ₱$sum"
echo "Items: $count"
