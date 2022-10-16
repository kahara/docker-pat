#!/bin/bash -e

gomplate < /etc/ardopc/asoundrc.tmpl > ${HOME}/.asoundrc

while true; do
      ardopc --cat $RIG_SERIALPORT --keystring FEFE88E01C0001FD --unkeystring FEFE88E01C0000FD || true
      sleep 1
done
