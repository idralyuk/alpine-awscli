FROM alpine:latest

RUN apk --update --no-cache add bash curl docker git python py-pip; \
    pip install --quiet --no-cache-dir awscli; \
    apk --purge -v del py-pip && rm /var/cache/apk/*

WORKDIR /tmp
ENTRYPOINT ["/bin/sh"]
