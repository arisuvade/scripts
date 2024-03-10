#!/bin/bash

mouse_id=$(xinput list --id-only 'pointer:2.4G Mouse')

# Set mouse speed
xinput --set-prop $mouse_id 'libinput Accel Speed' -0.9

# Off the touchpad
~/github/scripts/touchpad-automation/touchpad-off.sh
