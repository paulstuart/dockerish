Dockerized BIND
===============

Includes a Dockerfile to create a BIND DNS server on the latest CentOS container.

Best to create an aliased IP on the host and bind to that as a unique service (see the "run" script).

Copy named.conf and zone files with their appropriate structure (including log directory!) E.g.,

    FILES/var/log/named
    FILES/var/named/zones/subdomain.example.com
    FILES/var/named/zones/168.192.in-addr.arpa
    FILES/etc/named.conf
    FILES/etc/named/custom.conf
