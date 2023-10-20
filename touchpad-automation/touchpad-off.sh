#!/bin/bash

# Change to your touchpad name
touchpad_name="YSPRINGTECH USB OPTICAL MOUSE"

# Off touchpad
synclient TouchpadOff=1

id=$(xinput list --id-only "$touchpad_name")
xinput set-prop "$id" "Device Enabled" 0
