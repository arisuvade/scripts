#!/bin/bash

# Hyprpaper configuration path
conf_path="/home/aries/.config/hypr/hyprpaper.conf"

# Wallpaper path
wallpaper_path=$1

# Check if the wallpaper file exists
if [ ! -f "$wallpaper_path" ]; then
    echo "Error: Wallpaper file does not exist."
    exit 1
fi

# Update the configuration file
sed -i "s|preload = .*|preload = $wallpaper_path|" $conf_path
sed -i "s|wallpaper = .*|wallpaper = eDP-1, $wallpaper_path|" $conf_path
sed -i "s|wallpaper = .*|wallpaper = HDMI-A-1, $wallpaper_path|" $conf_path

# Check if the user want to enable/disable splash message
if [[ "$2" == "-s" || "$2" == "--splash" ]]; then

    # Check if to on or off the splash
    if [[ "$3" == "on" ]]; then
        sed -i "s|splash = .*|splash = true|" $conf_path
    elif [[ "$3" == "off" ]]; then
        sed -i "s|splash = .*|splash = false|" $conf_path
    else
        echo "Invalid option for splash. Use 'on' or 'off'."
        exit 1
    fi

fi

# Kill hyprpaper first to run new instance
pkill hyprpaper

# Reload Hyprland to apply the new wallpaper
hyprctl reload > /dev/null 2>&1

echo "Wallpaper changed successfully."
