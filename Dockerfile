FROM debian:jessie

MAINTAINER admin@best-net.cz

WORKDIR /root

ENTRYPOINT /etc/init.d/knot start && bash

EXPOSE 53/tcp 53/udp

RUN apt-get -q -y update \
&& apt-get install wget apt-transport-https nano vim ntpdate mc -y \
&& wget -O - https://deb.knot-dns.cz/knot/apt.gpg | apt-key add - \
&& echo "deb https://deb.knot-dns.cz/knot/ jessie main" > /etc/apt/sources.list.d/knot.list \
&& apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 0x908332071dd2e32e \
&& echo "deb http://deb.best-hosting.cz/debian/ jessie main" > /etc/apt/sources.list.d/best-hosting.list \
&& apt-get update \
&& apt-get install knot knot-dnsutils vim bh-php70 -y \
&& ln -s /opt/php7/bh-php70/bin/php /usr/local/sbin/ \
&& cd \
&& apt-get autoremove -q -y \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

