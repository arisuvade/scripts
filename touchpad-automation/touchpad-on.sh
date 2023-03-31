#!/bin/bash

# On the touchpad
synclient TouchpadOff=0

id=$(xinput list --id-only 'SYN1B7B:01 06CB:2969 Touchpad')
xinput set-prop "$id" "Device Enabled" 1

# On the tap-to-click
synclient TapButton1=1

# On the right click
synclient TapButton2=3

# On natural scrolling
synclient VertScrollDelta=-111
synclient HorizScrollDelta=-111

# On touchpad settings
~/Documents/github-repos/scripts/touchpad-automation/touch-settings.sh
