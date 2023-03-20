#!/bin/bash

brightness=$(light -G)
roundedoff=$(printf "%.0f" $brightness)

echo " $roundedoff%"
