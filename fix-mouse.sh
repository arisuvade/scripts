#!/bin/bash

mouse_id=$(xinput list | grep -m 1 "2\.4G Mouse" | grep -oP 'id=\K\d+')

xinput --set-prop $mouse_id 'libinput Accel Speed' -0.9
