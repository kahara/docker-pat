#!/bin/bash -e

gomplate < /etc/ardopc/asoundrc.tmpl > ${HOME}/.asoundrc

while true; do
      ardopc 8515 pcm.ARDOP pcm.ARDOP || true  # --ptt ${RIG_SERIALPORT}:${RIG_SERIALSPEED} --keystring FEFE88E01C0001FD --unkeystring FEFE88E01C0000FD || true
      sleep 1
done
