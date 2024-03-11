#!/bin/bash

# Add to Visudo to run with sudo
# aries ALL=(ALL) NOPASSWD: /home/aries/GitHub/scripts/system-error-fixes/fix-clock.sh

# Set and check if the input is correct
if [ $# -eq 6 ]; then
    new_datetime="$1-$2-$3 $4:$5:$6"
elif [ $# -eq 4 ]; then
    new_datetime="2024-$1-$2 $3:$4"
else
    echo "Usage: clock month day hour minute"
    exit 1
fi

# Set time and date
sudo timedatectl set-time "$new_datetime"
echo "System time and date have been successfully updated."
