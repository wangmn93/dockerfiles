FROM ubuntu:16.04

RUN apt-get update && apt-get install -y gnupg2 curl ca-certificates && \
    apt-get purge --autoremove -y curl && \
    rm -rf /var/lib/apt/lists/*
