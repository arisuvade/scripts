#!/bin/bash

read -p "Change or reset the resolution? (c/r): " choice

if [ "$choice" == "c" ]; then
    read -p "Width: " width
    read -p "Height: " height
    size="adb shell wm size ${width}x${height}"
    
    read -p "Density: " density
    dens="adb shell wm density $density"
    
    eval $size
    eval $dens
    echo "Resolution changed!"

elif [ "$choice" == "r" ]; then
    resetsize="adb shell wm size reset"
    resetdens="adb shell wm density reset"
    
    eval $resetsize
    eval $resetdens
    echo "Resolution reset to default!"
else
    echo "Invalid choice. Exiting."
fi
