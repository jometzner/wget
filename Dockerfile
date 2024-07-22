FROM alpine:3.20.2

ARG timeout=3600
ENV SECS=${timeout}

RUN apk --update add openssl wget \
  && rm -rf /var/cache/apk/*

COPY docker-entrypoint.sh /
ENTRYPOINT [ "/docker-entrypoint.sh" ]
