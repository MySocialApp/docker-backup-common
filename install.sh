#!/bin/sh

# Install common tools and packages
apk update && apk add curl duplicity openssl bash && \
rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

# Get kubectl
curl -o /usr/bin/kubectl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
chmod +x /usr/bin/kubectl
