# This is a comment
FROM pstuart/alpine:latest
MAINTAINER Paul Stuart <pauleyphonic@gmail.com>

RUN apk add --update openssl openssh sudo

RUN \
#
# TODO: see if these changes are still relevant with current version of docker (1.12.3)
# https://github.com/neeravkumar/dockerfiles/blob/master/alpine-openrc/Dockerfile
#
# Tell openrc its running inside a container, till now that has meant LXC
    sed -i 's/#rc_sys=""/rc_sys="lxc"/g' /etc/rc.conf &&\
# Tell openrc loopback and net are already there, since docker handles the networking
    echo 'rc_provide="loopback net"' >> /etc/rc.conf &&\
# no need for loggers
    sed -i 's/^#\(rc_logger="YES"\)$/\1/' /etc/rc.conf &&\
# can't get ttys unless you run the container in privileged mode
    sed -i '/tty/d' /etc/inittab &&\
# can't set hostname since docker sets it
    sed -i 's/hostname $opts/# hostname $opts/g' /etc/init.d/hostname &&\
# can't mount tmpfs since not privileged
    sed -i 's/mount -t tmpfs/# mount -t tmpfs/g' /lib/rc/sh/init.sh &&\
# can't do cgroups
    sed -i 's/cgroup_add_service /# cgroup_add_service /g' /lib/rc/sh/openrc-run.sh

RUN rc-update add sshd                                                                                  && \
    rc-status                                                                                           && \
    touch /run/openrc/softlevel                                                                         && \
    /etc/init.d/sshd start                                                                              && \
    /etc/init.d/sshd stop

RUN adduser -D -s /bin/bash pstuart

RUN echo "pstuart  ALL=(ALL)   NOPASSWD:ALL" > /etc/sudoers.d/pstuart

RUN mkdir /home/pstuart/.ssh
ADD https://github.com/paulstuart.keys /home/pstuart/.ssh/authorized_keys
RUN chmod 700 /home/pstuart/.ssh
RUN chown -R pstuart /home/pstuart/.ssh

#      ssh mosh
EXPOSE 22  60001/udp

#CMD ["bash"]
#ENTRYPOINT ["/usr/sbin/sshd", "-De"]

ENTRYPOINT ["/sbin/openrc"]
CMD ["boot"]

