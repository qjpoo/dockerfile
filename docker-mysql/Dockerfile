FROM alpine:latest
MAINTAINER quinn <qjpoo@163.com>

ADD ./src /
WORKDIR /opt

RUN apk add --update mysql mysql-client; rm -f /var/cache/apk/*

EXPOSE 3306
CMD ["/startup.sh"]
