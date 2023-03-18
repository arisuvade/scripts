#!/bin/bash

cmatrix="/usr/bin/cmatrix"

if [[ ! -f $cmatrix ]]; then
    sudo pacman -S cmatrix
fi

cmatrix -b -u 3 -C cyan
