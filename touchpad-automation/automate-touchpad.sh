#!/bin/bash

id=$(xinput list --id-only 'SYN1B7B:01 06CB:2969 Touchpad')

if [[ $id -ne 13 ]]; then
    xinput set-prop "$id" "Device Enabled" 0

    # Disable touchpad and mouse that I didn't know
    xinput set-prop "$(xinput list --id-only 'ELAN Touchscreen')" "Device Enabled" 0
    xinput set-prop "$(xinput list --id-only 'SYN1B7B:01 06CB:2969')" "Device Enabled" 0
    
else
    xinput set-prop "$id" "Device Enabled" 1
    ./Documents/github-repos/scripts/touchpad-automation/touchpad-on.sh
fi
