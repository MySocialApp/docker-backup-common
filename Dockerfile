FROM openjdk:8u151-jdk-alpine3.7

# Install common tools and packages
RUN apk update && apk add curl duplicity openssl bash && \
    rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

# Get kubectl
RUN curl -o /usr/bin/kubectl -LO https://storage.googleapis.com/kubernetes-release/release/v1.8.6/bin/linux/amd64/kubectl && \
    chmod +x /usr/bin/kubectl

