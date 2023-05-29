#!/bin/bash

if [[ $1 == "-h" || $1 == "--help" ]]; then
    echo "NAME"
    echo "    Brightness - increase and decrease brightness"
    echo "SYPNOSIS"
    echo "    ./brightness.sh --option 'value'"
    echo ""
    echo "OPTIONS"
    echo "    -i | --increase"
    echo "        increase brightness"
    echo "    -d | --decrease"
    echo "        decrease brightness"
    echo "    -s | --set"
    echo "        set brightness"
    echo "    --max"
    echo "        max brightness"
    exit 0
fi

if [[ $1 == "-i" || $1 == "--increase" || $1 == "-d" || $1 == "--decrease" ]]; then
    if [[ $1 == "-i" || $1 == "--increase" ]]; then
        brightness="Increases"
        option="-A"
    else
        brightness="Decreases"
        option="-U"
    fi

    brightness_value=$2
    light $option "$brightness_value"
    echo "$brightness brightness by $brightness_value"
    
elif [[ $1 == "-s" || $1 == "--set" || $1 == "--max" ]]; then
    if [[ $1 == "-s" || $1 == "--set" ]]; then
        brightness_value=$2
        echo "Set brightness to $brightness_value%"
    else
        brightness_value=153
        echo "Brightness maxed out"
    fi
    
    light -S "$brightness_value"
    
else
    echo "Invalid brightness option"
fi
