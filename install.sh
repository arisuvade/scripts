#!/bin/bash

# File operations
cd file-operations && ./install.sh && cd ..

# System checks
cd system-checks && ./install.sh && cd ..

# System controls
cd system-controls && ./install.sh && cd ..

# System error fixes
cd system-error-fixes && ./install.sh && cd ..

# Terminal utils
cd terminal-utils && ./install.sh && cd ..

# Help section
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Usage:"
    echo "  [OPTION] [VALUE]"
    echo ""
    echo "Commands:"
    echo "  -h, --help      Show this help and exit"
    echo ""
    echo "Aliases:"
    echo "  assign          Assign alias to the file"
    echo "  anime           Search for anime in gogoanime.llc"
    echo "  mouse           Set the mouse pointer speed"
    echo "  unlockp         Unlock android phones"
    echo "  updatesched     Put an update scheduler"
    echo "  videor          Make a white bg reflector"
    exit 0
fi

# Other scripts
case "$SHELL" in
    "/bin/bash")
        echo -e "\n# Other scripts" ~/.bashrc
        echo "alias anime='~/scripts/anime_checker.py'" >> ~/.bashrc
        echo "alias mouse='~/scripts/mouse-pointer-speed.sh'" >> ~/.bashrc
        echo "alias unlockp='~/scripts/unlock-phone.sh'" >> ~/.bashrc
        echo "alias updatesched='~/scripts/update-scheduler.sh'" >> ~/.bashrc
        echo "alias videor='~/scripts/video-reflectors.sh'" >> ~/.bashrc
        ;;
    "/usr/bin/zsh")
        echo -e "\n# Other scripts" ~/.zshrc
        echo "alias anime='~/scripts/anime_checker.py'" >> ~/.zshrc
        echo "alias mouse='~/scripts/mouse-pointer-speed.sh'" >> ~/.zshrc
        echo "alias unlockp='~/scripts/unlock-phone.sh'" >> ~/.zshrc
        echo "alias updatesched='~/scripts/update-scheduler.sh'" >> ~/.zshrc
        echo "alias videor='~/scripts/video-reflectors.sh'" >> ~/.zshrc
        ;;
    *)
        echo "Error: Shell not found!"
        exit 1
esac
