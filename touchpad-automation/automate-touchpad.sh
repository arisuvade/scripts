#!/bin/bash

# Change to your touchpad name and id
touchpad_name="SYN1B7B:01 06CB:2969 Touchpad"
touchpad_id=13

current_id=$(xinput list --id-only "$touchpad_name")

if [[ $current_id -ne $touchpad_id ]]; then
    xinput set-prop "$current_id" "Device Enabled" 0

    # Disable touchpad and mouse that I didn't know
    xinput set-prop "$(xinput list --id-only 'ELAN Touchscreen')" "Device Enabled" 0
    xinput set-prop "$(xinput list --id-only 'SYN1B7B:01 06CB:2969')" "Device Enabled" 0
    
else
    xinput set-prop "$current_id" "Device Enabled" 1
    ~/GitHub/scripts/touchpad-automation/touchpad-on.sh
fi
