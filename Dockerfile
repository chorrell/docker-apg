FROM alpine:3

LABEL org.opencontainers.image.source https://github.com/chorrell/docker-apg

RUN set -ex \
    && apk add --no-cache apg

COPY docker-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["apg"]
