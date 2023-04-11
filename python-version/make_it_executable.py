from sys import argv
import os


file = argv[1]

try:
    os.chmod(file, 1)
    print("File is executable now!")
except FileNotFoundError:
    print("File not found!")
