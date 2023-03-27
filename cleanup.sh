#!/bin/bash

# Install paccache if not already installed
paccache="/usr/bin/paccache"
[[ ! -f $paccache ]] && sudo pacman -S pacman-contrib

# To clear cache
sudo paccache -rk0
