#!/bin/bash

if [ $# -eq 2 ]; then
    current_date=$(date -u -d "$(curl -s --head 'https://www.google.com' | grep ^Date: | sed 's/Date: //')" +"%Y-%m-%d")
    new_datetime="$current_date $1:$2"
    sudo timedatectl set-time "$new_datetime"
    timedatectl
else
    echo "Usage: clock hour minute"
fi
