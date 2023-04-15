#!/bin/bash

id=$(xinput list --id-only '2.4G Mouse')
xinput --set-prop $id 'libinput Accel Speed' -0.90
