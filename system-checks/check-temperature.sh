#!/bin/bash

temp=$(sensors | grep 'Package' | awk '{print $4}' | sed 's/+//')
echo "Temperature: $temp"
