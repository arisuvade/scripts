#!/bin/bash

# Change to your touchpad name
touchpad_name="SYN1B7B:01 06CB:2969 Touchpad"

# Off touchpad
# synclient TouchpadOff=1

id=$(xinput list --id-only "$touchpad_name")
xinput set-prop "$id" "Device Enabled" 0
