
# build RPMs in this container

FROM centos
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

RUN yum -y update

RUN yum install -y tftp tftp-server
#RUN yum -y install dhcp dhcp-common iproute

CMD /sbin/in.tftpd -4 -L -v -s /var/lib/tftpboot > /var/log/tftpd.log 2>&1
