SHELL := /bin/bash

all: base ubuntu sshd golang docker dcman-builder

base:
	docker build -t pstuart/alpine:latest base

ubuntu:
	docker build -t pstuart/ubuntu-test ubuntu

sshd:
	docker build -t pstuart/alpine-sshd:latest sshd

golang:
	docker build -t pstuart/alpine-golang golang

docker:
	docker build -t pstuart/alpine-docker docker

rpms: 
	docker build -t pstuart/rpmbuilder rpms

bind: 
	docker build -t pstuart/bind bind/BUILD

httpd: 
	docker build -t pstuart/httpd httpd

dhcpd: 
	docker build -t pstuart/dhcpd dhcpd

dcman-build: 
	docker build -t pstuart/dcman-build dcman-build

dcman-pkg: 
	docker build -t pstuart/dcman-pkg dcman-pkg

.PHONY: all base clean docker dhcpd rpms ubuntu golang sshd dcman-build dcman-pkg bind httpd

