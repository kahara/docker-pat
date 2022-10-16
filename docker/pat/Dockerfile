FROM ubuntu:22.04

ARG PAT_VERSION
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC
ENV DOCKERIZE_VERSION=v0.6.1

RUN apt update && apt install -y \
    ca-certificates \
    curl \
    golang \
    tzdata
COPY --from=hairyhenderson/gomplate:stable /gomplate /usr/local/bin/gomplate
RUN go install github.com/la5nta/pat@${PAT_VERSION}
RUN cp /root/go/bin/pat /usr/local/bin/

RUN mkdir /etc/pat
COPY config.json.tmpl /etc/pat/
COPY run-pat.sh /usr/local/bin/

# FIXME make this compatible with ARMen
RUN curl -L -O https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz

ENTRYPOINT /usr/local/bin/run-pat.sh
