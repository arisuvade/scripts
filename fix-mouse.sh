#!/bin/bash

mouse_id=$(xinput list | grep -m 1 "2\.4G Mouse" | grep -oP 'id=\K\d+')

# Set mouse speed
xinput --set-prop $mouse_id 'libinput Accel Speed' -0.9

# Off the touchpad
~/github/scripts/touchpad-automation/touchpad-off.sh
