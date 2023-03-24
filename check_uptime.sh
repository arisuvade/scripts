#!/bin/bash

upt=$(uptime -p | awk '{print $2, $3, $4, $5, $6, $7}' OFS=' ')
echo "Uptime: $upt"
