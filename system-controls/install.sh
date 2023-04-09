#!/bin/bash

# Help section
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Usage:"
    echo "  [OPTION] [VALUE]"
    echo ""
    echo "Commands:"
    echo "  -h, --help      Show this help and exit"
    echo ""
    echo "Aliases:"
    echo "  bdown           Reduce current brightness by 10"
    echo "  bmax            Max out the brightness"
    echo "  bup             Add current brightness by 10"
    echo "  b               Add or reduce brightness depending on level"
    echo "  vdown           Reduce current volume by 10"
    echo "  vmax            Max out the volume"
    echo "  vmute           Mute the volume"
    echo "  vup             Add current volume by 10"
    echo "  v               Add or reduce volume depening on level"
    exit 0
fi

# Add aliases to their respective shell
case "$SHELL" in
    "/bin/bash")
        echo -e "\n# System controls" >> ~/.bashrc
        echo "alias bdown='~/scripts/system-controls/brightness-down.sh'" >> ~/.bashrc
        echo "alias bdown='~/scripts/system-controls/brightness-max.sh'" >> ~/.bashrc
        echo "alias bdown='~/scripts/system-controls/brightness-up.sh'" >> ~/.bashrc
        echo "alias bdown='~/scripts/system-controls/brightness.sh'" >> ~/.bashrc
        echo "alias bdown='~/scripts/system-controls/volume-max.sh'" >> ~/.bashrc
        echo "alias bdown='~/scripts/system-controls/volume-mute.sh'" >> ~/.bashrc
        echo "alias bdown='~/scripts/system-controls/volume-up.sh'" >> ~/.bashrc
        echo "alias bdown='~/scripts/system-controls/volume.sh'" >> ~/.bashrc
        ;;
    "/usr/bin/zsh")
        echo -e "\n# System controls" >> ~/.zshrc
        echo "alias bdown='~/scripts/system-controls/brightness-down.sh'" >> ~/.zshrc
        echo "alias bdown='~/scripts/system-controls/brightness-max.sh'" >> ~/.zshrc
        echo "alias bdown='~/scripts/system-controls/brightness-up.sh'" >> ~/.zshrc
        echo "alias bdown='~/scripts/system-controls/brightness.sh'" >> ~/.zshrc
        echo "alias bdown='~/scripts/system-controls/volume-max.sh'" >> ~/.zshrc
        echo "alias bdown='~/scripts/system-controls/volume-mute.sh'" >> ~/.zshrc
        echo "alias bdown='~/scripts/system-controls/volume-up.sh'" >> ~/.zshrc
        echo "alias bdown='~/scripts/system-controls/volume.sh'" >> ~/.zshrc
        ;;
    *)
        echo "Error: Shell not found!"
        exit 1
esac
