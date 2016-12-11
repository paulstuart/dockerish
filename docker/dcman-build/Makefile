#
# static build!
# https://dominik.honnef.co/posts/2015/06/go-musl/#flavor-be-gone
#

SHELL := /bin/bash

all: fresh

get:
	go get -u

compile:
	CC=/usr/bin/x86_64-alpine-linux-musl-gcc go build --ldflags '-linkmode external -extldflags "-static"'

archive:
	tar -czf /shared/dcman.tgz dcman *config* assets data*

copy:
	cp -r /go/bin/* /shared/
	cp -r assets /shared
	cp -r *cfg /shared

build: compile copy

fresh: get build

latest: fresh archive

pkg: compile archive

.PHONY: all build copy fresh get latest pkg

