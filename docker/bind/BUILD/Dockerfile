
# host DNS services in this container

FROM centos
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

RUN yum -y update

RUN yum -y install bind bind-utils #iproute

#COPY docker-entrypoint.sh /

CMD ["/usr/sbin/named", "-u", "named", "-f" ]
#CMD ["/docker-entrypoint.sh"]
