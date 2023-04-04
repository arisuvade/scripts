#!/bin/bash

if [[ "$1" == "--uninstall" ]]; then
    sudo pacman -Rns cmatrix
    exit 0
fi

cmatrix="/usr/bin/cmatrix"

if [[ ! -f $cmatrix ]]; then
    sudo pacman -S cmatrix
fi

cmatrix -b -u 3 -C cyan
