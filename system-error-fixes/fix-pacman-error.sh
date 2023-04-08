#!/bin/bash

# Remove the database lock
sudo rm /var/lib/pacman/db.lck

# If want to reboot
read -r -p "Do you want reboot now? (y/n) " option

if [[ $option == "y" ]]; then
    reboot
else
    echo "Okay. You must reboot later."
fi
