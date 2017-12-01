SHELL := /bin/bash

all: base ubuntu sshd golang docker dcman-builder

base:
	docker build -t pstuart/alpine:latest base

ubuntu:
	docker build -t pstuart/ubuntu ubuntu

centos6:
	docker build -t pstuart/centos6 centos6

sshd:
	docker build -t pstuart/alpine-sshd:latest sshd

golang:
	docker build \
		--build-arg http_proxy=$$http_proxy 	\
		--build-arg https_proxy=$$https_proxy	\
		--build-arg HTTP_PROXY=$$HTTP_PROXY	\
		--build-arg HTTPS_PROXY=$$HTTPS_PROXY	\
		--build-arg no_proxy=$$no_proxy		\
		-t pstuart/alpine-golang golang

rlang:
	docker build \
		--build-arg http_proxy=$$http_proxy 	\
		--build-arg https_proxy=$$https_proxy	\
		--build-arg HTTP_PROXY=$$HTTP_PROXY	\
		--build-arg HTTPS_PROXY=$$HTTPS_PROXY	\
		--build-arg no_proxy=$$no_proxy		\
		-t pstuart/rlang rlang

docker:
	docker build -t pstuart/alpine-docker docker

rpms: 
	docker build -t pstuart/rpmbuilder rpms

bind: 
	docker build -t pstuart/bind bind

httpd: 
	docker build -t pstuart/httpd httpd

tftp: 
	docker build -t pstuart/tftp tftp

dhcpd: 
	docker build -t pstuart/dhcpd dhcpd

rsyslog: 
	docker build -t pstuart/rsyslog rsyslog

dcman-build: 
	docker build -t pstuart/dcman-build dcman-build

dcman-pkg: 
	docker build -t pstuart/dcman-pkg dcman-pkg

clean:
	cd ..; $(MAKE) kill rm
	
rm:
	$(MAKE) -C .. rm

kill:
	$(MAKE) -C .. kill

.PHONY: all base clean docker dhcpd rpms ubuntu golang sshd dcman-build dcman-pkg bind httpd centos6 rsyslog tftp clean kill rlang

