FROM busybox:1.35

RUN adduser -D html
USER html
WORKDIR /var/www/html

CMD ["busybox", "httpd", "-f", "-v", "-p", "9223"]
