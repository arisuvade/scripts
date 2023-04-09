#!/bin/bash

# Help section
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Usage:"
    echo "  [OPTION]"
    echo ""
    echo "Commands:"
    echo "  -h, --help      Show this help and exit"
    echo ""
    echo "Aliases:"
    echo "  fixp            Fix pacman error when suddenly device shutdown while installing software"
    echo "  fixz            Fix zsh_history error when you tried a command that can break zsh"
    exit 0
fi

# Add aliases to their respective shell
case "$SHELL" in
    "/bin/bash")
        echo -e "\nalias fixp='~/scripts/system-error-fix/fix-pacman-error.sh'" >> ~/.bashrc
        echo "alias fixz='~/scripts/system-error-fix/fix-zsh-error.sh'" >> ~/.bashrc
        ;;
    "/usr/bin/zsh")
         echo -e "\nalias fixp='~/scripts/system-error-fix/fix-pacman-error.sh'" >> ~/.zshrc
        echo "alias fixz='~/scripts/system-error-fix/fix-zsh-error.sh'" >> ~/.zshrc
        ;;
    *)
        echo "Error: Shell not found!"
        exit 1
esac