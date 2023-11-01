FROM nginx:1.25.2

RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install --no-install-recommends -y \
    iputils-ping telnet traceroute dnsutils wget \
 && rm -rf /var/lib/apt/lists/*