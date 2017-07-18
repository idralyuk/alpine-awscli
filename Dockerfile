FROM alpine:latest

RUN apk --update --no-cache add python py-pip
RUN pip install -q awscli
RUN apk --purge -v del py-pip && rm /var/cache/apk/*

WORKDIR /tmp
ENTRYPOINT ["/bin/sh"]
