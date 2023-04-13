#!/bin/bash

# Open phone
adb shell input keyevent KEYCODE_WAKEUP

# Type password and enter
adb shell input text "0301"
adb shell input keyevent KEYCODE_ENTER
