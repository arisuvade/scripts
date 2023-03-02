#!/usr/bin/env python

import os


# On the touchpad
os.system("synclient TouchpadOff=0")
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
