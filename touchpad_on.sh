#!/bin/bash

# On the touchpad
synclient TouchpadOff=0
echo "Touchpad on"

# On the tap-to-click
synclient TapButton1=1
echo "Tap-to-click on"

# On the right click
synclient TapButton2=3
echo "Touchpad right click on"

# On natural scrolling
synclient VertScrollDelta=-111
synclient HorizScrollDelta=-111
echo "Natural scrolling on"
