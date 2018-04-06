# References :
# https://
FROM ubuntu:latest

# Install usefull utilities
RUN apt-get update && \
    apt-get -y dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install apt-utils curl wget sudo unzip iproute2 iputils-ping dnsutils net-tools nmap build-essential

# 
# Install NodeJS from tarball
#
RUN cd /tmp
RUN wget https://nodejs.org/dist/v9.9.0/node-v9.9.0-linux-x64.tar.gz && \
    tar xvf node-v9.9.0-linux-x64.tar.gz && \
    rm node-v9.9.0-linux-x64.tar.gz && \
    cd node-v9.9.0-linux-x64 && \
    cp -R * /usr/local/ && \
    rm -rf node-v9.9.0-linux-x64 

#ENTRYPOINT ["/usr/local/bin/node","--max-old-space-size=256","red.js","-p","7777"]
#CMD ["/usr/local/bin/node-red","-p","7777"]

