[![Docker Repository on Quay.io](https://quay.io/repository/heximcz/knotdns/status "Docker Repository on Quay.io")](https://quay.io/repository/heximcz/knotdns)
[![](https://images.microbadger.com/badges/image/hexim/knotdns.svg)](http://microbadger.com/images/hexim/knotdns "Get your own image badge on microbadger.com")

# heximcz/knotdns:2.6.4

- **High-performance authoritative-only DNS server**
- Knot DNS is a high-performance authoritative-only DNS server which supports all key features of the modern domain name system.
- Knot maintainer: [CZ.NIC Labs](https://www.knot-dns.cz/) Knot DNS is developed by CZ.NIC Labs, the R&D department of .CZ registry and hence is well suited to run anything from the root zone, the top-level domain, to many smaller standard domain names. 
- [Knot DNS Documentation](https://www.knot-dns.cz/documentation/) 

## Docker Knot DNS:
- latest version: **docker pull hexim/knotdns:2.6.4**

## News
- from KnotDNS 2.6.0 docker is running on Debian 9 - Stretch
- new [examples](https://github.com/heximcz/docker-knotdns/tree/master/examples/complete) for master and slave DNS server

## Additional modules:

- php7.0-cli, php7.0-mysql, php7.0-curl, phpunit (for [SynKnot](https://synknot.cz/))
- vim (powerful text editor)
- ntpdate (sync date)
- net-tools (netstat,...)
- mc (Midnight Commander)
- nano (text editor)

## Example: docker-compose.yml
- Version 3.3 work with Docker Engine release 17.06.0+
- with docker-compose version [1.16.1+](https://github.com/docker/compose/releases)
```
version: '3.3'
services:
  knotdns:
    container_name: hexim_knot
    image: 'hexim/knotdns:latest'
    ports:
     - "5053:53/tcp"
     - "5053:53/udp"
    stdin_open: true
    volumes:
     - /opt/synknot:/opt/synknot
     - /opt/knot/etc:/etc/knot
     - /opt/knot/var/lib:/var/lib/knot
```

## Run bash
```
docker-compose exec knotdns bash
```

## Knot DNS configurations

[Read more examples on github](https://github.com/heximcz/docker-knotdns/tree/master/examples)


