#!/bin/bash

volume=$(pactl list sinks | grep Volume | head -n 1 | awk '{print $5}' | sed 's/.$//')

echo "Volume: $volume%"
