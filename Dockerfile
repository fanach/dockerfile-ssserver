FROM golang:1.9
RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-server 

FROM ubuntu:16.04
COPY --from=0 /go/bin/shadowsocks-server /ssserver
ENTRYPOINT ["/ssserver"]
