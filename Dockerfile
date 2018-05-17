# Adapted from: https://github.com/giantswarm/hugo-docker/blob/master/Dockerfile
FROM alpine:3.1

ENV HUGO_VERSION 0.40.3

# Install HUGO
RUN apk add --update curl ca-certificates
RUN curl -L -O https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
RUN tar xzf hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
RUN rm -r hugo_${HUGO_VERSION}_Linux-64bit.tar.gz
RUN apk del curl ca-certificates
RUN rm /var/cache/apk/*

ENTRYPOINT ["./hugo"]
