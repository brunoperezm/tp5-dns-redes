# Quagga OSPF
#
# VERSION 0.0.2

FROM alpine:latest

LABEL maintainer.name="Bruno Perez && Jere Benitez" \
      maintainer.email="bruno178pm@gmail.com" \
      version="0.0.2" \
      description="Quagga OSPF - apline based image"

RUN apk update
RUN apk add supervisor quagga heimdal tcpdump

RUN echo "ospfd=yes" >> /etc/quagga/daemons
RUN echo "zebra=yes" >> /etc/quagga/daemons

ENTRYPOINT ["/usr/bin/supervisord"]
