#!/bin/bash

id=$(xinput list --id-only 'SYN1B7B:01 06CB:2969 Touchpad')

if [[ $id -ne 13 ]]; then
    xinput set-prop "$id" "Device Enabled" 0
else
    xinput set-prop "$id" "Device Enabled" 1
    ./scripts/touchpad_on.sh
fi
