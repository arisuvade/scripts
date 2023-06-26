#!/bin/bash

disable="adb shell pm disable-user --user 0"
uninstall="adb shell pm uninstall --user 0"
install="adb shell cmd package install-existing"
uninstalledlist="adb shell \"(pm list packages -u && pm list packages) | sed 's/^package://' | sort | uniq -u\""
list="adb shell pm list packages"

# Function to display script usage
display_usage() {
    echo "Usage: $0 [--disable PACKAGE | --uninstall PACKAGE | --install-existing PACKAGE | --uninstalled-list | --list]"
    echo "Options:"
    echo "  --disable PACKAGE              Disable a specific bloatware package"
    echo "  --uninstall PACKAGE            Uninstall a specific bloatware package"
    echo "  --install-existing PACKAGE     Install an existing package"
    echo "  --uninstalled-list             List uninstalled packages"
    echo "  --list                         List all packages"
}

# Check if any arguments are provided
if [[ $# -eq 0 ]]; then
    display_usage
    exit 1
fi

# Parse command line arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        --disable)
            if [[ -z $2 ]]; then
                echo "Package name is missing. Usage: $0 --disable PACKAGE"
                exit 1
            fi
            eval "$disable $2"
            shift 2
            ;;
        --uninstall)
            if [[ -z $2 ]]; then
                echo "Package name is missing. Usage: $0 --uninstall PACKAGE"
                exit 1
            fi
            eval "$uninstall $2"
            shift 2
            ;;
        --install-existing)
            if [[ -z $2 ]]; then
                echo "Package name is missing. Usage: $0 --install-existing PACKAGE"
                exit 1
            fi
            eval "$install $2"
            shift 2
            ;;
        --uninstalled-list)
            eval $uninstalledlist
            shift
            ;;
        --list)
            eval $list
            shift
            ;;
        *)
            echo "Invalid option: $1"
            display_usage
            exit 1
            ;;
    esac
done
