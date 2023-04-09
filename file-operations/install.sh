#!/bin/bash

# Help section
if [[ "$1" == "--help" || "$1" == "-h" ]]; then
    echo "Usage:"
    echo "  [OPTION] [VALUE] [VALUE]"
    echo ""
    echo "Commands:"
    echo "  -h, --help      Show this help and exit"
    echo ""
    echo "Aliases:"
    echo "  cleanup         Clean up all the cache of softwares"
    echo "  findf           Find a file"
    echo "  move            Move all files in Download folder to their respective folder"
    echo "  rename          Rename a file"
    exit 0
fi


# Add aliases to their respective shell
case "$SHELL" in
    "/bin/bash")
        echo -e "\n# File operations"
        echo "alias cleanup='~/scripts/file-operations/cleanup.sh'" >> ~/.bashrc
        echo "alias findf='~/scripts/file-operations/find-file.sh'" >> ~/.bashrc
        echo "alias move='~/scripts/file-operations/move-file.sh'" >> ~/.bashrc
        echo "alias rename='~/scripts/file-operations/rename-file.sh'" >> ~/.bashrc
        ;;
    "/usr/bin/zsh")
        echo -e "\n# File operations"
        echo "alias cleanup='~/scripts/file-operations/cleanup.sh'" >> ~/.zshrc
        echo "alias findf='~/scripts/file-operations/find-file.sh'" >> ~/.zshrc
        echo "alias move='~/scripts/file-operations/move-file.sh'" >> ~/.zshrc
        echo "alias rename='~/scripts/file-operations/rename-file.sh'" >> ~/.zshrc
        ;;
    *)
        echo "Error: Shell not found!"
        exit 1
esac