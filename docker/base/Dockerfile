# This is a comment
FROM alpine:latest
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

ENV CURLOPT_PROXY=http://proxy-src.research.ge.com:8080
ENV FTP_PROXY=http://proxy-src.research.ge.com:8080
ENV HTTPS_PROXY=http://proxy-src.research.ge.com:8080
ENV HTTP_PROXY=http://proxy-src.research.ge.com:8080
ENV NO_PROXY=127.0.0.1,localhost,github.build.ge.com
ENV ftp_proxy=http://proxy-src.research.ge.com:8080
ENV http_proxy=http://proxy-src.research.ge.com:8080
ENV https_proxy=http://proxy-src.research.ge.com:8080

RUN apk update && apk upgrade
RUN apk add --update alpine-conf
RUN apk add --update ca-certificates && update-ca-certificates 
RUN apk add --update man man-pages mdocml-apropos
RUN apk add --update openrc-doc
RUN apk add --update openssl openssh 
RUN apk add --update bash curl python sqlite



