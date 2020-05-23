# Dockerfile for golang dev environment
FROM ubuntu:18.04
MAINTAINER leakgintapan

WORKDIR /root

ENV TERM=xterm-256color
COPY dotfiles .
ADD build.sh /tmp/build.sh
RUN /tmp/build.sh && rm /tmp/build.sh

ENTRYPOINT ["/bin/zsh"]
