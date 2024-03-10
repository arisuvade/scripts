#!/bin/bash

mouse_id=$(xinput list --id-only 'pointer:2.4G Mouse')

# Set mouse speed
xinput --set-prop $mouse_id 'libinput Accel Speed' -0.9

# Off touchpad and touchscreen
xinput set-prop "$(xinput list --id-only 'ELAN Touchscreen')" "Device Enabled" 0
xinput set-prop "$(xinput list --id-only 'SYN1B7B:01 06CB:2969 Mouse')" "Device Enabled" 0
