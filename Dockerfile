FROM node:alpine
LABEL maintainer="Will Squire <will@willsquire.com>"
WORKDIR /app
RUN apk add --update git &&\
    npm install -g bower polymer-cli --unsafe-perm &&\
    echo '{ "allow_root": true }' > /root/.bowerrc
