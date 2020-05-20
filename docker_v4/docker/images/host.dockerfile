# Host 
#
# VERSION 0.0.1

FROM alpine:3.10

LABEL maintainer.name="Grupo 9" \
      version="0.0.1" \
      description="Host"

RUN apk --update upgrade && \
    apk add --update vim tcpdump curl && \
    rm -rf /var/cache/apk/*