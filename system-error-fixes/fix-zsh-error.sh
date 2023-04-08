#!/bin/bash

# Remove the last 5 commands to fix the corrupt
sed -i -e :a -e '$d;N;2,5ba' -e 'P;D' ~/.zsh_history

echo "Restart the terminal."
