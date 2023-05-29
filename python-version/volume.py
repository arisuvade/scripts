#!/usr/bin/env python

from sys import argv, exit
import os


if argv[1] in ("-h", "--help"):
    print(
        """
NAME
        Volume - increase and decrease volume
SYPNOSIS
        ./volume.py --option "value"

OPTIONS
        -i | --increase
                increase volume
        -d | --decrease
                decrease volume
        -s | --set
                set volume
        --max
                max volume
        --mute
                mute volume
        --unmute
                unmute volume
"""
    )
    exit()

if argv[1] in ("-i", "--increase", "-d", "--decrease"):
    if argv[1] in ("-i", "--increase"):
        option: str = "+"
    else:
        option: str = "-"

    is_valid = os.system(f"pactl set-sink-volume 0 {option}{argv[2]}%")
    if not is_valid:
        print(f"Volume {option}{argv[2]}%")

elif argv[1] in ("-s", "--set", "--max"):
    if argv[1] in ("-s", "--set"):
        value: int = argv[2]
        print(f"Volume {argv[2]}%")
    else:
        value: int = 153
        print("Volume maxed out")

    os.system(f"pactl set-sink-volume 0 {value}%")

elif argv[1] in ("--mute", "--unmute"):
    if argv[1] == "--mute":
        is_mute: int = 1
        print("Volume unmuted")
    else:
        is_mute: int = 0
        print("Volume muted")

    os.system(f"pactl set-sink-mute 1 {is_mute}")

else:
    print("Invalid volume option")
