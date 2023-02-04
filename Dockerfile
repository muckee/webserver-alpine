FROM alpine:latest

RUN apk update && apk add --no-cache apache2 &&
    rc-service apache2 start

RUN adduser -D html
USER html
WORKDIR /var/www/html
