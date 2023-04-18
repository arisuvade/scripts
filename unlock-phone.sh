#!/bin/bash

read -r -p "Enter your passcode: " PASS

# Open phone
adb shell input keyevent KEYCODE_WAKEUP

# Type password and enter
adb shell input text "$PASS"
adb shell input keyevent KEYCODE_ENTER
