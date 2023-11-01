# netutils

Collection of useful tools for testing and debugging networks. Can be used locally of deployed in a Kubernetes cluster.

## Docker (local)

```bash
docker run --rm -it ghcr.io/nu12/netutils /bin/bash
```

## Kubernetes

Deployment:
```bash
kubectl create deployment netutils --image=ghcr.io/nu12/netutils
kubectt exec -it netutils -- /bin/bash
```
Service & Ingress:
```bash
kubectl create service clusterip netutils --tcp=80:80
kubectl create ingress netutils --rule="my.domain/=netutils:80"
```

## Commands cheatsheet

### ping

Check if an address is reacheable.


Example:
```
ping google.com
```

### curl

To make requests from the command line.

Syntax:
```
curl -v [-X METHOD] [-H "Content-Type: application/json"] [-d "data goes here"] http://address[:port]
```

Example:
```
curl -v google.com
```

### telnet

Connect to remote systems.

Syntax:
```
telnet host-name [port]
```

Example:
```
telnet google.com 443
```

### wget

Get files using HTTP, HTTPS, FTP and FTPS.

Syntax:
```
wget [options] [url]
```

### traceroute
Record the route through the internet from one endpoint to another.
Syntax:
```
traceroute [options]  host_Address [pathlength]
```

Example:
```
traceroute google.com
```


### nslookup
Find information about domain names and domain name resolution.

Syntax:
```
nslookup [options] [domain-name]
```

Example:
```
nslookup [-type=a|ns|mx|txt|ptr|soa|hinfo|any] google.com
```

### dig (DNS Lookup)
Find information about domain names and domain name resolution.

Syntax:
```
dig [server] [name] [type]
```

Example:
```
dig @8.8.8.8 google.com +short
dig -x 172.217.13.110
```

### openssl

Show certificate details of an address:

```bash
echo | openssl s_client -showcerts -servername gnupg.org -connect gnupg.org:443 2>/dev/null | openssl x509 -inform pem -noout -text
```

Note: replace `gnupg.org` with your target address.
