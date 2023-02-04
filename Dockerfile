FROM alpine:latest

RUN apk update && apk add nginx

RUN mkdir -p /run/nginx && \
    touch /run/nginx/nginx.pid

RUN adduser -D -g 'www' www && \
    mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN ["./usr/sbin/nginx"]
