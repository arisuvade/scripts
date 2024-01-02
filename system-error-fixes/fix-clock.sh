#!/bin/bash

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

# Inform the user that it is successful
echo "System time and date have been successfully updated."

# Boot up BIOS
sudo bootctl reboot-to-firmware true

# For test only
sudo sysctl -p

# Off alacritty
pkill alacritty

