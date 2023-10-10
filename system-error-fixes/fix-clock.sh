#!/bin/bash

if [ $# -eq 4 ]; then
    new_datetime="2023-$1-$2 $3:$4"
    sudo timedatectl set-time "$new_datetime"
    timedatectl
else
    echo "Usage: clock month day hour minute"
fi