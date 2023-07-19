#!/bin/bash

# Paths
path="/home/aries/.config/i3/config"
wallpaper_path="$1"

# Function to change the wallpaper line in the i3 config
change_i3_wallpaper() {
    line="exec --no-startup-id feh --bg-fill"
    sed -i "s|^\s*$line.*$|exec_always --no-startup-id feh --bg-fill '$wallpaper_path'|" $path
}

# Function to apply the wallpaper and replace exec_always
restart_i3() {
    i3-msg restart > /dev/null
    line="exec_always --no-startup-id feh --bg-fill"
    sed -i "s|^\s*$line.*$|exec --no-startup-id feh --bg-fill '$wallpaper_path'|" $path
    echo "Wallpaper changed successfully to: $wallpaper_path"
}

# Check if a wallpaper path argument is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <path_to_wallpaper>"
    exit 1
fi

# Check if the provided wallpaper path is valid
if [ ! -f "$1" ]; then
    echo "Error: The specified wallpaper file does not exist."
    exit 1
fi

# Call the functions to change and apply wallpaper
change_i3_wallpaper
restart_i3
