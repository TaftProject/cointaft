FROM debian:stretch
LABEL maintainer="Cointaft Developers <dev@cointaft.com>"
LABEL description="Dockerised CointaftCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
