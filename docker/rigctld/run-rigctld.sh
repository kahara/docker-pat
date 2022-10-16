#!/bin/bash

while true; do
    rigctld -vvv --rig-file=$RIG_SERIALPORT --serial-speed=$RIG_SERIALSPEED --model=$HAMLIB_RIGMODEL || true
    sleep 1
done
