#!/bin/bash

if [[ "$1" == "off" ]]; then
    # Not boot in BIOS
    bootctl reboot-to-firmware false
    echo "Booting to BIOS disabled!"
else
    # Boot in BIOS
    bootctl reboot-to-firmware true
    echo "Booting to BIOS enabled!"
fi
