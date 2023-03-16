#!/bin/bash


# Check if yay is installed
yay=/usr/bin/yay
if [[ ! -d $yay ]]; then
    sudo pacman -S yay
fi

# Check if auto-cpufreq is installed
acf=/usr/local/bin/auto-cpufreq
if [[ ! -d $acf ]]; then
    yay -S auto-cpufreq
fi

# Activate auto-cpufreq
sudo auto-cpufreq --install

echo "Run 'auto-cpufreq --stats' to see the stats"
