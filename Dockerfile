FROM alpine

RUN apk update \
 && apk upgrade

RUN apk add ca-certificates
RUN apk add openssl

COPY . /
