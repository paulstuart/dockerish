FROM ubuntu:latest

MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

# update and fix wget
RUN apt-get -y update && \
    apt-get install -y apt-utils

RUN apt-get install -y vim
RUN apt-get install -y python

WORKDIR /usr/local

# add to update w/o d/l trauma for now
RUN apt-get -y update

ADD go1.9.linux-amd64.tar.gz .

WORKDIR /root

#RUN mkdir go

RUN echo "export PATH=$PATH:/usr/local/go/bin" >> .bashrc

WORKDIR /tmp

ADD go1.8.3.linux-amd64.tar.gz .

RUN mv go /usr/local/go-1.8.3

WORKDIR /usr/local

RUN mv go go-1.9.0

RUN ln -s go-1.8.3 go

WORKDIR /root

RUN apt-get install -y ca-certificates

RUN apt-get install -y make

#RUN wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-135.0.0-linux-x86_64.tar.gz 

#COPY ./google-cloud-sdk-135.0.0-linux-x86_64.tar.gz .

#RUN tar -xzf google-cloud-sdk-135.0.0-linux-x86_64.tar.gz

#RUN ./google-cloud-sdk/install.sh -q

#RUN rm -f google-cloud-sdk-135.0.0-linux-x86_64.tar.gz


#WORKDIR google-cloud-sdk

RUN apt-get -y update
RUN apt-get -y install pkg-config libaio1 zip man

