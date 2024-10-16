#!/bin/bash

# Check if brightnessctl and ddcutil are installed
if ! command -v brightnessctl &> /dev/null || ! command -v ddcutil &> /dev/null; then
    echo "brightnessctl or ddcutil is not installed. Please install them first."
    exit 1
fi

# Function to check if the number is divisible by 5, >= 10, and <= 100
validate_brightness() {
    local brightness=$1
    if [[ $brightness -lt 10 ]]; then
        echo "Error: Brightness must be at least 10."
        exit 1
    fi
    if [[ $brightness -gt 100 ]]; then
        echo "Error: Brightness must not exceed 100."
        exit 1
    fi
    if ((brightness % 5 != 0)); then
        echo "Error: Brightness must be divisible by 5."
        exit 1
    fi
}

# Function to set laptop brightness
set_laptop_brightness() {
    local brightness=$1
    brightnessctl set "$brightness%" > /dev/null 2>&1
    echo "Laptop brightness set to $brightness%"
}

# Function to set external monitor brightness
set_external_brightness() {
    local brightness=$1
    ddcutil setvcp 10 "$brightness"
    echo "External monitor brightness set to $brightness"
}

# Ensure first argument is a valid number
if ! [[ "$2" =~ ^[0-9]+$ || "$1" =~ ^[0-9]+$ ]]; then
    echo "Error: Please provide a valid number for brightness."
    exit 1
fi

# Check if -l option is provided for laptop
if [[ "$1" == "-l" ]]; then
    if [[ -n "$2" ]]; then
        validate_brightness "$2"
        set_laptop_brightness "$2"
    else
        echo "Error: Please provide a brightness value for the laptop."
        exit 1
    fi
else
    validate_brightness "$1"
    set_external_brightness "$1"
fi
