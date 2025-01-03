#!/bin/bash

# Function to get current brightness
get_brightness() {
    ddcutil getvcp 0x10 | awk '{print $9}' | sed 's/,//'
}

# Decrease the brightness by N
decrease_brightness() {
    if [ -z "$1" ]; then
        echo "Usage: $0 <amount>"
        exit 1
    fi

    current_brightness=$(get_brightness)
    decrease_by=$1
    new_brightness=$((current_brightness - decrease_by))

    # Ensure brightness stays between 10 and 100
    if [ $new_brightness -lt 10 ]; then
        new_brightness=10
    fi

    # Set the new brightness
    ddcutil setvcp 0x10 $new_brightness
    echo "Brightness decreased to $new_brightness"
}

decrease_brightness $1
