#!/bin/bash

# Change to your touchpad name
touchpad_name="SYN1B7B:01 06CB:2969 Touchpad"

# On the touchpad
synclient TouchpadOff=0

id=$(xinput list --id-only "$touchpad_name")
xinput set-prop "$id" "Device Enabled" 1

# On the tap-to-click
synclient TapButton1=1

# On the right click
synclient TapButton2=3

# On natural scrolling
synclient VertScrollDelta=-111
synclient HorizScrollDelta=-111

# On touchpad settings
~/github/scripts/touchpad-automation/touch-settings.sh
