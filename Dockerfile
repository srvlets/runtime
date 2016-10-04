FROM alpine

RUN apk update \
 && apk upgrade

RUN apk add ca-certificates
RUN apk add openssl
RUN apk add nginx \
 && mkdir /run/nginx

COPY . /
