#!/usr/bin/env python

import os
import subprocess

# On the touchpad
os.system("synclient TouchpadOff=0")

output = subprocess.check_output(
    "xinput list --id-only 'SYN1B7B:01 06CB:2969 Touchpad'", shell=True
)
id = output.decode().strip()
subprocess.call(f'xinput set-prop {id} "Device Enabled" 1', shell=True)

print("Touchpad on")

# On the tap-to-click
os.system("synclient TapButton1=1")
print("Tap-to-click on")

# On the right click
os.system("synclient TapButton2=3")
print("Touchpad right click on")

# On natural scrolling
os.system("synclient VertScrollDelta=-111")
os.system("synclient HorizScrollDelta=-111")
print("Natural scrolling on")
