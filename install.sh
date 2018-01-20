#!/bin/sh

# Install common tools and packages
if [ -f /etc/alpine-release ] ; then
  apk update && apk add curl duplicity openssl bash && \
  rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*
elif [ -f /etc/debian_version ] ; then
  apt-get update && apt-get -y install curl duplicity python-boto openssl && \
  apt-get remove --purge && rm -Rf /var/lib/apt/lists/*
fi

# Get kubectl
curl -o /usr/bin/kubectl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
chmod +x /usr/bin/kubectl
