FROM busybox:1.35

RUN adduser -D www-data
USER www-data
WORKDIR /var/www/html

CMD ["busybox", "httpd", "-f", "-v", "-p", "9223"]
