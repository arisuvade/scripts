#!/bin/bash

option=$1

if [[ "$option" == "paccache" ]]; then
    # Install paccache if not already installed
    paccache="/usr/bin/paccache"
    [[ ! -f $paccache ]] && sudo pacman -S pacman-contrib

    # To clear cache
    sudo paccache -rk0
else
    sudo pacman -Scc
fi
