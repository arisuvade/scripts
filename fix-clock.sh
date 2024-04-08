#!/bin/bash

# Function to fetch time data and update system clock
function fix_clock {
    # Function to get time in Philippines and update system clock
    get_time_in_philippines() {
        # Fetch time data from World Time API
        current_time=$(curl -s http://worldtimeapi.org/api/timezone/Asia/Manila | grep -oP '(?<="datetime":")[^"]*')
        year=$(date -d "$current_time" +"%Y")
        month=$(date -d "$current_time" +"%-m")
        day=$(date -d "$current_time" +"%-d")
        hour=$(date -d "$current_time" +"%-H")
        minute=$(date -d "$current_time" +"%-M")
        second=$(date -d "$current_time" +"%-S")
        
        # Set time and date
        sudo timedatectl set-time "$year-$month-$day $hour:$minute:$second"
        echo "System time and date have been successfully updated."
    }

    # Check if curl is installed
    if command -v curl &>/dev/null; then
        get_time_in_philippines
    else
        echo "Curl not found. Please install curl to use this script."
        exit 1
    fi
}

# Execute the fix_clock function
fix_clock
