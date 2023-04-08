#!/bin/bash

# Change to your touchpad name
touchpad_name="SYN1B7B:01 06CB:2969 Touchpad"

# Touchpad
touchpad=$(xinput list-props "$touchpad_name" | grep "Device Enabled" | awk '{print $4}')

# Off
if [[ $touchpad -eq 1 ]]; then
    ~/GitHub/scripts/touchpad-automation/touchpad-off.sh

    # Off touchscreen also
    ~/GitHub/scripts/touchscreen-automation/touchscreen-off.sh

# On
else
    ~/GitHub/scripts/touchpad-automation/touchpad-on.sh

    # On touchscreen also
    ~/GitHub/scripts/touchscreen-automation/touchscreen-on.sh
fi
