#!/bin/bash

option=$1

if [[ "$option" == "cleanup" ]]; then
    sudo pacman -Scc

elif [[ "$option" == "paccache" ]]; then

    # Install paccache if not already installed
    paccache="/usr/bin/paccache"
    [[ ! -f $paccache ]] && sudo pacman -S pacman-contrib

    # To clear cache
    sudo paccache -rk0

else
    echo "Invalid option"
    exit 1
fi
