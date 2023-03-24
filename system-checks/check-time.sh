#!/bin/bash

timenow=$(date | awk '{print $4, $5}' OFS=' ')
timenow=$(echo $timenow | awk '{print substr($0, 1, 5), substr($0, 10, 2)}')
echo "Time: $timenow"
