#!/bin/bash

DATE=$(pacman -Qi base | grep "Install Date" | awk '{print $6, $5, $7}')
FORMATTED_DATE=$(date -d "$DATE" +"%B %d, %Y")

echo "Arch Linux was installed on $FORMATTED_DATE."
