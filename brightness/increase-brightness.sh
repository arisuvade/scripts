#!/bin/bash

STATE="/home/aries/Documents/scripts/brightness/get_brightness.txt"
LOCK="/tmp/brightness-lock"
STEP=${1:-5}

# cooldown check (3 seconds)
if [ -f "$LOCK" ] && [ $(($(date +%s) - $(cat "$LOCK"))) -lt 2 ]; then
    exit 0
fi
date +%s > "$LOCK"

# init state file if missing
if [ ! -f "$STATE" ]; then
    echo 50 > "$STATE"
fi

current=$(cat "$STATE")
new=$((current + STEP))

# Clamp
if [ "$new" -gt 100 ]; then
    new=100
fi

# Set brightness
if ddcutil setvcp 0x10 "$new" &>/dev/null; then
    echo "$new" > "$STATE"
else
    echo "Failed to set brightness" >&2
fi
