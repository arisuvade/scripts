#!/bin/bash

day=$(date | awk '{print $1}')
[[ $day == "Fri"  ]] && echo "It's Friday. Time to update your system!!!"
