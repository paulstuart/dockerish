# This is a comment
FROM ubuntu:16.04
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

# update and fix wget
RUN apt-get -y update && \
    apt-get install -y apt-utils

RUN apt-get install -y python

WORKDIR /usr/local
#RUN wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-135.0.0-linux-x86_64.tar.gz 
COPY ./google-cloud-sdk-135.0.0-linux-x86_64.tar.gz .
RUN tar -xzf google-cloud-sdk-135.0.0-linux-x86_64.tar.gz
RUN ./google-cloud-sdk/install.sh -q
RUN rm -f google-cloud-sdk-135.0.0-linux-x86_64.tar.gz

WORKDIR google-cloud-sdk

