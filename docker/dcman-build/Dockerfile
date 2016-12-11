
FROM pstuart/alpine-golang
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

RUN go get -u github.com/paulstuart/dcman

WORKDIR /go/src/github.com/paulstuart/dcman
COPY data.db .
COPY config.gcfg .

COPY Makefile .
COPY Dockerfile.pkg Dockerfile
COPY golang.sh /etc/profile.d/golang.sh

CMD make build
