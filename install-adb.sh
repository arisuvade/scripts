#!/bin/bash

dep=android-udev
adb=android-tools

command=adb

if command -v $command; then
    echo "$command is already installed."
else
    echo "$command is not installed. Installing..."
    sudo pacman -S $dep $adb -y
fi
