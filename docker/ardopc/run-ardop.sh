#!/bin/bash -e

gomplate < /etc/ardopc/asoundrc.tmpl > ${HOME}/.asoundrc

while true; do
      ardopc || true
      sleep 1
done
