#!/bin/bash

# Change to your touchscreen name and id
touchscreen_name="ELAN Touchscreen"
touchscreen_id=10

current_id=$(xinput list --id-only "$touchscreen_name")

if [[ $current_id -ne $touchscreen_id ]]; then
    xinput set-prop "$current_id" "Device Enabled" 0

    # Disable touchpad and mouse that I didn't know
    xinput set-prop "$(xinput list --id-only 'SYN1B7B:01 06CB:2969 Touchpad')" "Device Enabled" 0
    xinput set-prop "$(xinput list --id-only 'SYN1B7B:01 06CB:2969 Mouse')" "Device Enabled" 0
    
else
    xinput set-prop "$current_id" "Device Enabled" 1
    ~/GitHub/scripts/touchscreen-automation/touchscreen-on.sh
fi
