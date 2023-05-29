#!/bin/bash

dir_path="/home/aries/Downloads/"
docs_path="/home/aries/Documents/"
pics_path="/home/aries/Pictures/"

for file in "$dir_path"*; do
    if [[ "$file" == *.png || "$file" == *.jpg ]]; then
        echo "$(basename "$file") moved to Pictures."
        mv "$file" "$pics_path"
    elif [[ "$file" == *.pdf || "$file" == *.docx ]]; then
        echo "$(basename "$file") moved to Documents."
        mv "$file" "$docs_path"
    fi
done
