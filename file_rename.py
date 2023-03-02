#!/usr/bin/env

from sys import argv, exit
import os


file: str = argv[1]
renamed_file: str = argv[2]

try:
    os.rename(file, renamed_file)
except FileNotFoundError:
    print("File not found!")
    exit()

if "/home/aries/Documents/" in file:
    os.system(f"mv {renamed_file} /home/aries/Documents/")

elif "/home/aries/Downloads/" in file:
    os.system(f"mv {renamed_file} /home/aries/Downloads/")

elif "/home/aries/Music/" in file:
    os.system(f"mv {renamed_file} /home/aries/Music/")

elif "/home/aries/Pictures/" in file:
    if "Wallpapers/" in file:
        os.system(f"mv {renamed_file} /home/aries/Pictures/Wallpapers/")
    elif "Screenshots/" in file:
        os.system(f"mv {renamed_file} /home/aries/Pictures/Wallpapers/")
    else:
        os.system(f"mv {renamed_file} /home/aries/Pictures/")

elif "/home/aries/Programming/" in file:
    if renamed_file.endswith(".py"):
        os.system(f"mv {renamed_file} /home/aries/Programming/Python/")
    elif renamed_file.endswith(".java"):
        os.system(f"mv {renamed_file} /home/aries/Programming/Java/")
    elif renamed_file.endswith(".js"):
        os.system(f"mv {renamed_file} /home/aries/Programming/JavaScript/")
    else:
        os.system(f"mv {renamed_file} /home/aries/Programming/")

elif "/home/aries/School/" in file:
    os.system(f"mv {renamed_file} /home/aries/School/")

elif "/home/aries/scripts/" in file:
    os.system(f"mv {renamed_file} /home/aries/scripts/")

elif "/home/aries/" in file:
    os.system(f"mv {renamed_file} /home/aries/")

print("File renamed successfully!")
