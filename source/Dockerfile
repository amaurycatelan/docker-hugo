FROM golang:1.8-alpine

ENV GOPATH /go
ENV BUILD /build
ENV USER root

RUN apk update && apk add git make

# pre-install known dependencies before the source,
# so we don't redownload them whenever the source changes
# ----------------------
RUN go get github.com/kardianos/govendor

# set GOPATH and clone repository
# ----------------------
RUN export GOPATH=$(pwd) && \
git clone https://github.com/amaurycatelan/hugo.git && \
mkdir -p src/github.com/spf13 && \
ln -sf $(pwd)/hugo src/github.com/spf13/hugo

# go to specified version and get dependencies with govendor
# ----------------------
RUN cd src/github.com/spf13/hugo && \
git checkout me/v0.17 && \
govendor get && \
govendor sync && \
go build -o ${GOPATH}/build/hugo main.go

VOLUME ${BUILD}

CMD cp ${GOPATH}/build/hugo ${BUILD}