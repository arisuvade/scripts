#!/bin/bash

# Change to your touchpad name
touchpad_name="SYN1B7B:01 06CB:2969 Touchpad"

# Off touchpad
synclient TouchpadOff=1

id=$(xinput list --id-only "$touchpad_name")
xinput set-prop "$id" "Device Enabled" 0

# Off touchscreen also
xinput set-prop "$(xinput list --id-only 'ELAN Touchscreen')" "Device Enabled" 0
