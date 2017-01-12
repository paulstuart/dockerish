
SHELL := /bin/bash

PKG=$(PWD)/docker/dcman-pkg/shared

all: build pkg

test:
	docker run -it -P -v $(PWD)/shared:/shared pstuart/dcman-build "bash"

kill:
	docker kill $(shell docker ps -q)

rm:
	docker rm $(shell docker ps -a -q)

build: 
	docker run -it -P -v $(PKG):/shared pstuart/dcman-build make pkg #build

rebuild: 
	docker run -it -P -v $(PKG):/shared pstuart/dcman-build bash

pkg:
	cd docker && $(MAKE) dcman-pkg

clean:
	docker rmi $(shell docker images -f 'dangling=true' -q)

status:
	docker images -f "dangling=true"

server:
	docker run -p 62222:22 -it pstuart/alpine-sshd:latest bash -l

run:
	docker run -p 18080:8080 -it pstuart/dcman-pkg:latest 

docker:
	#docker run -it -P -v /var/run/docker.sock:/var/run/docker.sock -v $$PWD/docker:/docker pstuart/alpine-docker bash
	docker run -it -P -v /var/run/docker.sock:/var/run/docker.sock -v $$PWD:/meta pstuart/alpine-docker bash

.PHONY: all kill rm clean pkg docker test status copy rebuild

