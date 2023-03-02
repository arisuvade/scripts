#!/usr/bin/env python

import os
import shutil


dir_path: str = "/home/aries/Downloads/"

docs_path: str = "/home/aries/Documents/"
pics_path: str = "/home/aries/Pictures/"
music_path: str = "/home/aries/Music/"

files = os.listdir(dir_path)

for file in files:
    file_path = os.path.join(dir_path, file)

    if file.endswith(".png") or file.endswith(".jpg"):
        print(file, "moved to Pictures.")
        shutil.move(file_path, pics_path)

    elif file.endswith(".pdf") or file.endswith(".docx"):
        print(file, "moved to Documents.")
        shutil.move(file_path, docs_path)

    elif file.endswith(".mp3"):
        print(file, "moved to Music.")
        shutil.move(file_path, music_path)
