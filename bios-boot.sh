if [[ "$1" == "off" ]]; then
    bootctl reboot-to-firmware false
    echo "Booting to BIOS disabled!"
else
    bootctl reboot-to-firmware true
    echo "Booting to BIOS enabled!"
fi
