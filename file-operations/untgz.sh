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

# Check if the file is not a tar file
if ! file "$file" | grep -q "tar archive"; then
  echo "$file is not a valid tar file."
  exit 1
fi

# Extract the tar file
tar -xvzf "$file"
