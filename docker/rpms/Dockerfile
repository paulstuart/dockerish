
# build RPMs in this container

FROM centos
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

ENV PASSWORD=rpmbuilder

RUN yum -y update

RUN yum -y install openssl rpm-build && \
    yum -y groupinstall "Development tools"

RUN useradd -p `openssl passwd -crypt $PASSWORD` rpmbuilder 		&& \
    mkdir -p ~rpmbuilder/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}	&& \
    chown -R rpmbuilder:rpmbuilder  ~rpmbuilder

USER rpmbuilder

WORKDIR /home/rpmbuilder
