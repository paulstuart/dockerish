# This is a comment
FROM golang:1.9-alpine
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

# get up to date
RUN apk update && apk upgrade

# I like bash
RUN apk add bash bash-doc bash-completion

# tools needed for builds
RUN apk add git gcc linux-headers make musl-dev m4

# shell utils ( things like grep, awk, ls are all busybox symlinks )
RUN apk add binutils coreutils findutils grep 

# so we can package dockers at build time
RUN apk add docker

RUN apk add curl

RUN apk add --update ca-certificates && update-ca-certificates

# add CF binary
RUN curl -s -k --proxy-insecure -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx
# ...move it to /usr/local/bin or a location you know is in your $PATH

RUN mv cf /usr/local/bin

#ENV PATH $GOPATH/bin:/usr/local/bin:$PATH

#RUN echo 'export PATH=$GOPATH/bin:$PATH' > /etc/profile.d/golang.sh && chmod +x /etc/profile.d/golang.sh
