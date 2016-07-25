FROM alpine:3.4
MAINTAINER Jim Leirvik <jim@jimleirvik.no>

ENV LANG="en_US.UTF-8" \
    LC_ALL="en_US.UTF-8" \
    LANGUAGE="en_US.UTF-8" \
    TERM="xterm"

RUN apk -U upgrade && \
    apk --update add \
    php-cli && \
    rm -rf /tmp/src && \
    rm -rf /var/cache/apk/* && \
    echo "date.timezone = UTC" >> /etc/php/php.ini

RUN mkdir -p /data
VOLUME /data
WORKDIR /data

ENTRYPOINT ["php"]
