#!/usr/bin/env bash

IFACE="enp34s0"

# 1-second sample
R1=$(cat /sys/class/net/$IFACE/statistics/rx_bytes)
T1=$(cat /sys/class/net/$IFACE/statistics/tx_bytes)
sleep 1
R2=$(cat /sys/class/net/$IFACE/statistics/rx_bytes)
T2=$(cat /sys/class/net/$IFACE/statistics/tx_bytes)

RXB=$((R2 - R1))
TXB=$((T2 - T1))

# pick the bigger one
SPEED=$(( RXB > TXB ? RXB : TXB ))

# convert to MB
SPEED_MB=$(awk "BEGIN{printf \"%.1f\", $SPEED/1048576}")

if (( $(echo "$SPEED_MB < 1" | bc -l) )); then
    # <1 MB → 1 decimal
    VAL=$(awk "BEGIN{printf \"%.1f\", $SPEED/1048576}")
else
    # >=1 MB → round to nearest integer
    VAL=$(awk "BEGIN{printf \"%d\", ($SPEED/1048576 + 0.5)}")
fi

echo "$VAL"
