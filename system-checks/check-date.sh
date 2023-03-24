#!/bin/bash

datenow=$(date | awk '{print $2, $3",", $7}')
datenow=$(echo "$datenow" | awk '{gsub(/Jan/,"January"); gsub(/Feb/,"February"); gsub(/Mar/,"March"); gsub(/Apr/,"April"); gsub(/May/,"May"); gsub(/Jun/,"June"); gsub(/Jul/,"July"); gsub(/Aug/,"August"); gsub(/Sep/,"September"); gsub(/Oct/,"October"); gsub(/Nov/,"November"); gsub(/Dec/,"December"); print}')
echo "Date: $datenow"
