# Docker image for - knot-dns

- High-performance authoritative-only DNS server

- Knot DNS is a high-performance authoritative-only DNS server which supports all key features of the modern domain name system.

- Knot maintainer: [CZ.NIC Labs](https://www.knot-dns.cz/) Knot DNS is developed by CZ.NIC Labs, the R&D department of .CZ registry and hence is well suited to run anything from the root zone, the top-level domain, to many smaller standard domain names. 
                                                            


##Additional modules:

- php 7
- knot-dnsutils (kdig,..)

##docker-compose.yml (example)

```
version: '2'
services:
  web:
    container_name: knotdns
    image: 'hexim/knotdns:latest'
    ports:
     - "5353:53"
    stdin_open: true
    volumes:
     - /home/hexim/Workspace/php/synknot:/opt/synknot
     - /home/hexim/Docker/knot/etc:/etc/knot
     - /home/hexim/Docker/knot/var/lib:/var/lib/knot
```
