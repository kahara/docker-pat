#!/bin/bash -e

gomplate < /etc/pat/config.json.tmpl > /etc/pat/config.json

dockerize -wait tcp://rigctld:4532 -wait tcp://ardopc:8515

pat --config /etc/pat/config.json http --addr 0.0.0.0:10000
