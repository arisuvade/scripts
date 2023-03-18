#!/bin/bash

file=$1

if [[ -f $file ]]; then
    chmod +x "$file"
else
    echo "File not found!"
    exit 1
fi

echo "File is executable now!"