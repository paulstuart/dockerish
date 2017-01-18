
# build RPMs in this container

FROM centos
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

RUN yum -y update

RUN yum -y install rsyslog

## FOR TESTING ONLY
RUN yum -y install lsof iproute

RUN mkdir -p /run/systemd/journal

         #s/$ModLoad imjournal/#$ModLoad imjournal/;		\

RUN sed -i -e \
	's/#$ModLoad imudp/$ModLoad imudp/;			\
	 s/#$ModLoad imuxsock/$ModLoad imuxsock/;		\
         s/#$UDPServerRun 514/$UDPServerRun 514/;		\
         s/#$ModLoad imtcp/$ModLoad imtcp/;			\
         s/#$InputTCPServerRun 514/$InputTCPServerRun 514/;	\
         s/$ModLoad imklog/#$ModLoad imklog/;			\
         s/$FileOwner syslog/$FileOwner root/;			\
         s/$PrivDropToUser syslog/#$PrivDropToUser syslog/;	\
         s/$PrivDropToGroup syslog/#$PrivDropToGroup syslog/;	\
         s/$OmitLocalLogging on/#$OmitLocalLogging on/;'	\
	/etc/rsyslog.conf

EXPOSE 514/tcp 514/udp
#VOLUME ["/var/log/hosts"]

#ENTRYPOINT [ "/sbin/rsyslogd", "-4", "-n" ]
CMD [ "/sbin/rsyslogd", "-4n" ]

