FROM alpine:latest

RUN apk update -y && \
    apk add py-pip && \
    pip install --upgrade pip && \
    pip install shadowsocks

ENTRYPOINT ["/usr/bin/ssserver","--log-file=/var/log/shadowsocks.log"]
