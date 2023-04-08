#!/bin/bash

# Help section
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Usage:"
    echo "  [OPTION]"
    echo ""
    echo "Commands:"
    echo "-h, --help        Show this help and exit"
    echo ""
    echo "Aliases:"
    echo "  batt            Check battery level"
    echo "  bright          Check brightness level"
    echo "  cdate           Check current date"
    echo "  temp            Check temperature of device"
    echo "  ctime           Check current time"
    echo "  upt             Check the uptime of the device"
    echo "  vol             Check volume level"
    exit 0
fi


# Add aliases to their respective shell
case "$SHELL" in
    "/bin/bash")
        echo -e "\nalias batt='~/scripts/system-checks/check-battery.sh'" >> ~/.bashrc
        echo "alias bright='~/scripts/system-checks/check-brightness.sh'" >> ~/.bashrc
        echo "alias cdate='~/scripts/system-checks/check-date.sh'" >> ~/.bashrc
        echo "alias temp='~/scripts/system-checks/check-temperature.sh'" >> ~/.bashrc
        echo "alias ctime='~/scripts/system-checks/check-time.sh'" >> ~/.bashrc
        echo "alias upt='~/scripts/system-checks/check-uptime.sh'" >> ~/.bashrc
        echo "alias vol='~/scripts/system-checks/check-volume.sh'" >> ~/.bashrc
        ;;
    "/usr/bin/zsh")
        echo -e "\nalias batt='~/scripts/system-checks/check-battery.sh'" >> ~/.zshrc
        echo "alias bright='~/scripts/system-checks/check-brightness.sh'" >> ~/.zshrc
        echo "alias cdate='~/scripts/system-checks/check-date.sh'" >> ~/.zshrc
        echo "alias temp='~/scripts/system-checks/check-temperature.sh'" >> ~/.zshrc
        echo "alias ctime='~/scripts/system-checks/check-time.sh'" >> ~/.zshrc
        echo "alias upt='~/scripts/system-checks/check-uptime.sh'" >> ~/.zshrc
        echo "alias vol='~/scripts/system-checks/check-volume.sh'" >> ~/.zshrc
        ;;
    *)
        echo "Error: Shell not found!"
        exit 1
esac