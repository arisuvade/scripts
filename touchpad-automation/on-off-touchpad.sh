#!/bin/bash

# Touchpad
touchpad=$(xinput list-props "SYN1B7B:01 06CB:2969 Touchpad" | grep "Device Enabled" | awk '{print $4}')

# Off
if [[ $touchpad -eq 1 ]]; then
    ~/Documents/github-repos/scripts/touchpad-automation/touchpad-off.sh
# On
else
    ~/Documents/github-repos/scripts/touchpad-automation/touchpad-on.sh
fi
