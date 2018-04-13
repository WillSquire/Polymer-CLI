FROM node:alpine
LABEL maintainer="Will Squire <will@willsquire.com>"
WORKDIR /app
RUN apk add git --no-cache &&\
    npm install -g bower polymer-cli --unsafe-perm &&\
    npm cache clean --force &&\
    echo '{ "allow_root": true }' > /root/.bowerrc
