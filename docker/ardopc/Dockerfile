FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y \
    alsa-utils
COPY --from=hairyhenderson/gomplate:stable /gomplate /usr/local/bin/gomplate

# FIXME support ARMen
COPY bin/ardopc64 /usr/local/bin/ardopc
COPY run-ardop.sh /usr/local/bin/

RUN mkdir /etc/ardopc/
COPY asoundrc.tmpl /etc/ardopc/

ENTRYPOINT /usr/local/bin/run-ardop.sh
