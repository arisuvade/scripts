#!/bin/bash

BRIGHTNESS_FILE="/home/aries/Documents/scripts/brightness/get_brightness.txt"
LOCK="/tmp/brightness-lock"

# cooldown check (3 seconds)
if [ -f "$LOCK" ] && [ $(($(date +%s) - $(cat "$LOCK"))) -lt 2 ]; then
    exit 0
fi
date +%s > "$LOCK"

get_cached_brightness() {
    cat "$BRIGHTNESS_FILE"
}

save_brightness() {
    echo "$1" > "$BRIGHTNESS_FILE"
}

decrease_brightness() {
    if [ -z "$1" ]; then
        echo "Usage: $0 <amount>"
        exit 1
    fi

    current_brightness=$(get_cached_brightness)
    decrease_by=$1
    new_brightness=$((current_brightness - decrease_by))

    # Clamp to minimum
    if [ "$new_brightness" -lt 5 ]; then
        new_brightness=5
    fi

    # Apply brightness using ddcutil
    ddcutil setvcp 0x10 "$new_brightness"

    # Save new value
    save_brightness "$new_brightness"

    echo "Brightness decreased to $new_brightness"
}

decrease_brightness "$1"
