FROM alpine:3.14

ENV LC_ALL      en_US.UTF-8

RUN apk --no-cache upgrade && \
    apk --no-cache add  \
    bash            \
    ca-certificates \
    git             \
    grep            \
    make            \
    openssl         \
    tar             \
    tcpdump         \
    busybox-extras  \
    curl

ENTRYPOINT ["ping", "127.0"]
