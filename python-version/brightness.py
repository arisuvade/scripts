#!/usr/bin/env python

from sys import argv, exit
import os


if argv[1] in ("-h", "--help"):
    print(
        """
NAME
        Brightness - increase and decrease brightness
SYPNOSIS
        python3 brightness.py --option "value"

OPTIONS
        -i | --increase
                increase brightness
        -d | --decrease
                decrease brightness
        -s | --set
                set brightness
        --max
                max brightness
"""
    )
    exit()

if argv[1] in ("-i", "--increase", "-d", "--decrease"):
    if argv[1] in ("-i", "--increase"):
        brightness: str = "Increases"
        option: str = "-A"
    else:
        brightness: str = "Decreases"
        option: str = "-U"

    os.system(f"light {option} {argv[2]}")
    print(f"{brightness} brightness by {argv[2]}")

elif argv[1] in ("-s", "--set", "--max"):
    if argv[1] in ("-s", "--set"):
        value: int = argv[2]
        print(f"Set brightness to {argv[2]}%")
    else:
        value: int = 153
        print("Brightness maxed out")

    os.system(f"light -S {value}")

else:
    print("Invalid brightness option")
