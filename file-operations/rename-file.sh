#!/bin/bash

file=$1
renamed_file=$2

if [[ -f $file ]]; then
    mv "$file" "$renamed_file"
else
    echo "File not found!"
    exit 1
fi

docs="/home/aries/Documents/"
dls="/home/aries/Downloads/"
pics="/home/aries/Pictures/"
code="/home/aries/Code/"
gith="/home/aries/GitHub/"
sch="/home/aries/Schoolwork/"
home="/home/aries/"

# Documents
if [[ "$file" == *"$docs"* ]]; then
    mv "$renamed_file" /home/aries/Documents/

# Downloads
elif [[ "$file" == *"$dls"* ]]; then
    mv "$renamed_file" /home/aries/Downloads/

# Pictures
elif [[ "$file" == *"$pics"* ]]; then
    if [[ "$file" == *"/Wallpapers/"* ]]; then
        mv "$renamed_file" /home/aries/Pictures/Wallpapers/
    elif [[ "$file" == *"/Screenshots/"* ]]; then
        mv "$renamed_file" /home/aries/Pictures/Screenshots/
    else
        mv "$renamed_file" /home/aries/Pictures/
    fi

# Code
elif [[ "$file" == *"$code"* ]]; then
    if [[ "$renamed_file" == *.py ]]; then
        mv "$renamed_file" /home/aries/Code/Python/
    elif [[ "$renamed_file" == *.java ]]; then
        mv "$renamed_file" /home/aries/Code/Java/
    elif [[ "$renamed_file" == *.js ]]; then
        mv "$renamed_file" /home/aries/Code/JavaScript/
    else
        mv "$renamed_file" /home/aries/Code/
    fi

# GitHub
elif [[ "$file" == *"$gith"* ]]; then
    mv "$renamed_file" /home/aries/GitHub/

# School
elif [[ "$file" == *"$sch"* ]]; then
    mv "$renamed_file" /home/aries/Schoolwork/

# Home
elif [[ "$file" == *"$home"* ]]; then
    mv "$renamed_file" /home/aries/
fi

echo "File renamed successfully!"
