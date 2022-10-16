FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    libhamlib-utils

COPY run-rigctld.sh /usr/local/bin/

ENTRYPOINT /usr/local/bin/run-rigctld.sh
