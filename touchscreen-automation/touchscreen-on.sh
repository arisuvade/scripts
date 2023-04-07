#!/bin/bash

# Change to your touchscreen name
touchscreen_name="ELAN Touchscreen"

# Disable touchscreen
xinput set-prop "$touchscreen_name" "Device Enabled" 1
