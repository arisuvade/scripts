#!/bin/bash

# Change to your touchscreen name
touchscreen_name="ELAN Touchscreen"

# Touchscreen
touchscreen=$(xinput list-props "$touchscreen_name" | grep "Device Enabled" | awk '{print $4}')

# Off
if [[ $touchscreen -eq 1 ]]; then
    ~/GitHub/scripts/touchscreen-automation/touchscreen-off.sh
# On
else
    ~/GitHub/scripts/touchscreen-automation/touchscreen-on.sh
fi
