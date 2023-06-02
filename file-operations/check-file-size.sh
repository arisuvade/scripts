#!/bin/bash

file="$1"

# Check if the argument is not provided
if [ -z "$file" ]; then
  echo "No file provided."
  exit 1
fi

# Check if the argument is not a file
if [ ! -f "$file" ]; then
  echo "$file is not a file."
  exit 1
fi

# Retrieve the file size
size=$(ls -sh "$file" | awk '{printf "%sB\n", $1}')
echo "$size"
