#!/bin/bash

xrandr --newmode "1432x805_60.06"  94.17  1432 1504 1656 1880  805 806 809 834  -HSync +Vsync
xrandr --addmode eDP-1 "1432x805_60.06"
xrandr --output eDP-1 --mode "1432x805_60.06"
