############################################################
# Dockerfile to build OpenTTD container images
# Based on phusion:baseimage (from ubuntu)
############################################################
FROM phusion/baseimage:latest
MAINTAINER Mats Bergmann <bateau@sea-shell.org>

ARG OPENTTD_VERSION="1.7.1"
ARG OPENGFX_VERSION="0.5.4"

ADD . /tmp
RUN /tmp/prepare.sh && \
    /tmp/system_services.sh && \
    /tmp/cleanup.sh

VOLUME /home/openttd/.openttd

EXPOSE 3979/tcp
EXPOSE 3979/udp
