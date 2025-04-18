FROM golang:1.24-alpine

RUN apk add --no-cache git

WORKDIR /app

RUN go install github.com/huseyin/hey

FROM alpine:latest

COPY --from=0 /go/bin/hey /usr/local/bin/hey

ENTRYPOINT ["hey"]
