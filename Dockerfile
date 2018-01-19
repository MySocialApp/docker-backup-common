FROM openjdk:8u151-jdk-alpine3.7

ADD install.sh
RUN sh install.sh
