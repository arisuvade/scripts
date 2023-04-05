#!/bin/bash

dep=android-udev
adb=android-tools

if [[ "$1" == "--uninstall" ]]; then
    sudo pacman -Rns $dep $adb
    exit 0
fi

command=adb

if command -v $command; then
    echo "$command is already installed."
else
    sudo pacman -S $dep $adb -y
fi
