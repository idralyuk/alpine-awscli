FROM alpine:latest

RUN apk --update --no-cache add bash curl docker openssh-client git python py-pip; \
    pip install --quiet --no-cache-dir awscli; \
    apk --purge -v del py-pip && rm -vrf /var/cache/apk/*

ENTRYPOINT ["/bin/bash"]
