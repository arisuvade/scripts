#!/bin/bash

batt=$(cat /sys/class/power_supply/BAT1/capacity)
echo "  $batt%"
