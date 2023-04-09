#!/bin/bash

case "$SHELL" in
    "/bin/bash")
        echo -e "# Update scheduler" >> .bashrc
        echo "~/scripts/update-scheduler.sh" >> ~/.bashrc
        ;;
    "/usr/bin/zsh")
        echo -e "# Update scheduler" >> .zshrc
        echo "~/scripts/update-scheduler.sh" >> ~/.zshrc
        ;;
    *)
        echo "Error: Shell not found!"
        exit 1

day=$(date | awk '{print $1}')
[[ $day == "Fri"  ]] && echo "It's Friday. Time to update your system!!!"
