#docker build -t pstuart/node:4.4 .
docker build \
	--build-arg http_proxy=$http_proxy 	\
	--build-arg https_proxy=$https_proxy	\
	--build-arg HTTP_PROXY=$HTTP_PROXY	\
	--build-arg HTTPS_PROXY=$HTTPS_PROXY	\
	--build-arg no_proxy=$no_proxy		\
	-t pstuart/node:6.11.1 .
