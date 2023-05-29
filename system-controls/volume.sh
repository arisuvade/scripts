#!/bin/bash

if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    echo "NAME"
    echo "    Volume - increase and decrease volume"
    echo "SYPNOSIS"
    echo "    ./volume.sh --option \"value\""
    echo ""
    echo "OPTIONS"
    echo "    -i | --increase"
    echo "        increase volume"
    echo "    -d | --decrease"
    echo "        decrease volume"
    echo "    -s | --set"
    echo "        set volume"
    echo "    --max"
    echo "        max volume"
    echo "    --mute"
    echo "        mute volume"
    echo "    --unmute"
    echo "        unmute volume"
    exit 0
fi

if [[ "$1" == "-i" || "$1" == "--increase" || "$1" == "-d" || "$1" == "--decrease" ]]; then
    if [[ "$1" == "-i" || "$1" == "--increase" ]]; then
        option="+"
        action="increased"
    else
        option="-"
        action="decreased"
    fi

    pactl set-sink-volume 0 "$option$2%"
    echo "Volume $action by $2%"

elif [[ "$1" == "-s" || "$1" == "--set" || "$1" == "--max" ]]; then
    if [[ "$1" == "-s" || "$1" == "--set" ]]; then
        value="$2%"
        echo "Volume set to $2%"
    else
        value="153%"
        echo "Volume maxed out"
    fi

    pactl set-sink-volume 0 "$value"

elif [[ "$1" == "--mute" || "$1" == "--unmute" ]]; then
    if [[ "$1" == "--mute" ]]; then
        is_mute="1"
        echo "Volume muted"
    else
        is_mute="0"
        echo "Volume unmuted"
    fi

    pactl set-sink-mute 1 "$is_mute"

else
    echo "Invalid volume option"
fi
