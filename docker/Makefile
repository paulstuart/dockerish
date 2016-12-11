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

dcman-build: 
	docker build -t pstuart/dcman-build dcman-build

dcman-pkg: 
	docker build -t pstuart/dcman-pkg dcman-pkg

.PHONY: all base clean docker ubuntu golang sshd dcman-build dcman-pkg

