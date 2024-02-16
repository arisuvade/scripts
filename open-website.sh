#!/bin/bash

# Check if Browser is running
if pgrep -x "Thorium-Browser" > /dev/null; then
    # If Browser is running, open the website in a new tab
    ~/Documents/Thorium-Browser-AVX2.AppImage --new-tab $1
fi
