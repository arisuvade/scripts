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
    echo "  assign          Assign alias to the file"
    echo "  makeit          Make the file executable"
    exit 0
fi

# Add aliases to their respective shell
case "$SHELL" in
    "/bin/bash")
        echo -e "\n# Terminal utils" ~/.bashrc
        echo "alias assign='~/scripts/terminal-utils/assign-alias.sh'" >> ~/.bashrc
        echo "alias makeit='~/scripts/terminal-utils/make-it-executable.sh'" >> ~/.bashrc
        ;;
    "/usr/bin/zsh")
        echo -e "\n# Terminal utils" >> ~/.zshrc
        echo "alias assign='~/scripts/terminal-utils/assign-alias.sh'" >> ~/.zshrc
        echo "alias makeit='~/scripts/terminal-utils/make-it-executable.sh'" >> ~/.zshrc
        ;;
    *)
        echo "Error: Shell not found!"
        exit 1
esac