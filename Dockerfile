FROM golang:1.11

LABEL description="politeia dev"
LABEL version="0.1"
LABEL maintainer "me@go1dfish.me"

ENV GO111MODULE on
EXPOSE 4443

WORKDIR /go/src/github.com/decred/politeia
COPY . /go/src/github.com/decred/politeia

RUN ./docker-setup.sh
RUN pidataload

CMD ["pi"]
