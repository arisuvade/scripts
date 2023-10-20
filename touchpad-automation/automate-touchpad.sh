#!/bin/bash

# Change to your touchpad name and id
touchpad_name="YSPRINGTECH USB OPTICAL MOUSE"
touchpad_id=13

current_id=$(xinput list --id-only "$touchpad_name")

# Off touchpad and on mouse pointer speed
if [[ $current_id -eq $touchpad_id ]]; then
    xinput set-prop "$current_id" "Device Enabled" 0

    # Disable touchscreen and mouse that I didn't know
    xinput set-prop "$(xinput list --id-only 'ELAN Touchscreen')" "Device Enabled" 0
    xinput set-prop "$(xinput list --id-only 'SYN1B7B:01 06CB:2969 Mouse')" "Device Enabled" 0

    # On mouse pointer speed
    ~/GitHub/scripts/mouse-pointer-speed.sh

# On touchpad
else
    xinput set-prop "$current_id" "Device Enabled" 1
    ~/GitHub/scripts/touchpad-automation/touchpad-on.sh
fi
