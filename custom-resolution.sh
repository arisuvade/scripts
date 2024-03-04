#!/bin/bash

gtf 1461 823 60.06
xrandr --newmode "1464x823_60.06"  98.66  1464 1544 1696 1928  823 824 827 852  -HSync +Vsync
xrandr --addmode eDP-1 "1464x823_60.06"
xrandr --output eDP-1 --mode "1464x823_60.06"
