#!/bin/bash

# Unmute if muted
mute=$(pactl list sinks | grep -A 10 'Sink #1' | grep 'Mute' | awk '{print $2}')
[[ $mute == "yes" ]] && pactl set-sink-mute 1 0

# Max out the volume
pactl set-sink-volume 0 153%
