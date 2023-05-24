#!/bin/bash

if [[ $1 == "-d" || $1 == "--done" ]]; then
    sudo chown -R root /usr/lib/code
    exit 0
else
    echo "'./sw84-neon-activation.sh' to activate neon."
    echo "'./sw84-neon-activation.sh' -d if you're done."
fi

sudo chown -R aries /usr/lib/code
