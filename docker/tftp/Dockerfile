
# build RPMs in this container

FROM centos
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

RUN yum -y update

RUN yum install -y tftp tftp-server

RUN useradd tftp

# for testing/debugging
RUN yum -y install less iproute

#CMD /sbin/in.tftpd -4 -L -vvv -u tftp -R 23000:23999 -c -p -s /var/lib/tftpboot #> /var/log/tftpd.log 2>&1
#CMD /sbin/in.tftpd -4 -L -vvv -u tftp -c -p -s /var/lib/tftpboot #> /var/log/tftpd.log 2>&1
CMD [ "/sbin/in.tftpd", "-4", "-L", "-vvv", "-u", "tftp", "-c", "-p", "-s", "/var/lib/tftpboot" ]
