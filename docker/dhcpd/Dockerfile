
# build RPMs in this container

FROM centos
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

RUN yum -y update

RUN yum -y install dhcp dhcp-common iproute

CMD /usr/sbin/dhcpd -d
