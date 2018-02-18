# References :
# https://
FROM alpine:latest

# 
# Install NodeJS from tarball
#
#RUN cd /tmp
#RUN wget https://nodejs.org/dist/v9.5.0/node-v9.5.0-linux-x64.tar.gz && \
#    tar xvf node-v9.5.0-linux-x64.tar.gz && \
#    rm node-v9.5.0-linux-x64.tar.gz && \
#    cd node-v9.5.0-linux-x64 && \
#    cp -R * /usr/local/ && \
#    rm -rf node-v9.5.0-linux-x64 

RUN apk add nodejs --update

#ENTRYPOINT ["/usr/local/bin/node","-p","7777"]
#CMD ["/usr/local/bin/node","-p","7777"]

