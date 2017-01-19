# Docker repository for - Knot DNS

- **High-performance authoritative-only DNS server**
- Knot DNS is a high-performance authoritative-only DNS server which supports all key features of the modern domain name system.
- Knot maintainer: [CZ.NIC Labs](https://www.knot-dns.cz/) Knot DNS is developed by CZ.NIC Labs, the R&D department of .CZ registry and hence is well suited to run anything from the root zone, the top-level domain, to many smaller standard domain names. 
- Documentation for Knot DNS 2.x: [html](https://www.knot-dns.cz/docs/2.x/html/),[html single page](https://www.knot-dns.cz/docs/2.x/singlehtml/),[PDF](https://www.knot-dns.cz/docs/2.x/KnotDNS.pdf)
                                                            
## Docker Knot DNS:
- latest version: hexim/knotdns:2.4.0

## Additional modules:

- php 7 (php cli)
- vim (powerful text editor)
- ntpdate (sync date)
- net-tools (netstat,...)
- mc (Midnight Commander)
- nano (text editor)

## Example: docker-compose.yml


```
version: '2'
services:
  knot:
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

