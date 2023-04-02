#!/bin/bash

file=$1

if [[ -f $file ]]; then
    echo "$1 is here!"
else
    echo "File not found!"
fi
