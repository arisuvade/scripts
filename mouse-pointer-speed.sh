#!/bin/bash

id=$(xinput list --id-only 'YSPRINGTECH USB OPTICAL MOUSE')
xinput --set-prop $id 'libinput Accel Speed' -0.98
