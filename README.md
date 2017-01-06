# Docker image for - knot-dns

- **High-performance authoritative-only DNS server**
- Knot DNS is a high-performance authoritative-only DNS server which supports all key features of the modern domain name system.
- Knot maintainer: [CZ.NIC Labs](https://www.knot-dns.cz/) Knot DNS is developed by CZ.NIC Labs, the R&D department of .CZ registry and hence is well suited to run anything from the root zone, the top-level domain, to many smaller standard domain names. 
                                                            
# Knot version is > 2.x
- current version 2.3.3

#Additional modules:

- php 7
- vim
- ntpdate
- knot-dnsutils (kdig,..)

#docker-compose.yml (example)


```
version: '2'
services:
  web:
    container_name: knotdns
    image: 'hexim/knotdns:latest'
    ports:
     - "5053/tcp:53/tcp"
     - "5053/udp:53/udp"
    stdin_open: true
    volumes:
     - /opt/synknot:/opt/synknot
     - /opt/knot/etc:/etc/knot
     - /opt/knot/var/lib:/var/lib/knot
```

