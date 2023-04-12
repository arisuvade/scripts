#!/bin/bash

# Open 2 browsers with white background
brave -disk-cache-dir=Documents --disk-cache-size=104857600 --new-window https://www.drodd.com/images14/white1.jpg >> brave.log
brave -disk-cache-dir=Documents --disk-cache-size=104857600 --new-window https://www.drodd.com/images14/white1.jpg >> brave.log

# Remove log
rm brave.log
