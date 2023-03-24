#!/bin/bash

# Off touchpad
synclien TouchpadOff=1

id=$(xinput list --id-only 'SYN1B7B:01 06CB:2969 Touchpad')
xinput set-prop "$id" "Device Enabled" 0

echo "Touchpad off"
