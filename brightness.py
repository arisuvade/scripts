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

elif argv[1] == "--max":
    os.system("light -S 100")
    print("Max brightness")

else:
    print("Invalid brightness option")
