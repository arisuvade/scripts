#!/bin/bash

dep=android-udev
adb=android-tools

command=adb

if command -v $command; then
    echo "$command is already installed."
else
    sudo pacman -S $dep $adb -y
fi
