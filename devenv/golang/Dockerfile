# Dockerfile for golang dev environment
FROM ubuntu:18.04
MAINTAINER leakgintapan

WORKDIR /root

ENV TERM=xterm-256color
COPY dotfiles .
ADD build.sh build.sh
RUN ./build.sh

ENTRYPOINT ["/bin/zsh"]
