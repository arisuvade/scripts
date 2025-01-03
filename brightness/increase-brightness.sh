#!/bin/bash

# Function to get current brightness
get_brightness() {
    ddcutil getvcp 0x10 | awk '{print $9}' | sed 's/,//'
}

# Increase the brightness by N
increase_brightness() {
    if [ -z "$1" ]; then
        echo "Usage: $0 <amount>"
        exit 1
    fi

    current_brightness=$(get_brightness)
    increase_by=$1
    new_brightness=$((current_brightness + increase_by))

    # Ensure brightness stays between 10 and 100
    if [ $new_brightness -gt 100 ]; then
        new_brightness=100
    fi

    # Set the new brightness
    ddcutil setvcp 0x10 $new_brightness
    echo "Brightness increased to $new_brightness"
}

increase_brightness $1
