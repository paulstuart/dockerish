
# build RPMs in this container

FROM centos
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

RUN yum -y update

RUN yum -y install httpd 

#USER named

CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
