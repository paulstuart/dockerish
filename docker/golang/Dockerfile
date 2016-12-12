# This is a comment
FROM golang:1.7-alpine
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

# get up to date
RUN apk update && apk upgrade

# I like bash
RUN apk add bash bash-doc bash-completion

# tools needed for builds
RUN apk add git gcc linux-headers make musl-dev

# shell utils ( things like grep, awk, ls are all busybox symlinks )
RUN apk add binutils coreutils findutils grep 

ENV PATH $GOPATH/bin:/usr/local/bin:$PATH

RUN echo 'export PATH=$GOPATH/bin:$PATH' > /etc/profile.d/golang.sh && chmod +x /etc/profile.d/golang.sh
