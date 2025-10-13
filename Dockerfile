FROM nginx:1.29.2

LABEL org.opencontainers.image.source https://github.com/nu12/netutils

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install --no-install-recommends -y \
    iputils-ping telnet traceroute dnsutils wget \
 && rm -rf /var/lib/apt/lists/*