#!/bin/bash

# Check whether between online or offline
if [ $# -eq 2 ]; then
    # Online mode
    current_date=$(date -u -d "$(curl -s --head 'https://www.google.com' | grep ^Date: | sed 's/Date: //')" +"%Y-%m-%d")
    new_datetime="$current_date $1:$2"

elif [ $# -eq 4 ]; then
    # Offline mode
    new_datetime="2023-$1-$2 $3:$4"

else
    echo "Usage: clock (month day) hour minute"
    exit 1
fi

# Set time and date
sudo timedatectl set-time "$new_datetime"

# Restart polybar
~/.config/polybar/launch.sh > /dev/null 2>&1 &

# Inform the user that it is successful
echo "System time and date have been successfully updated."
