FROM alpine:latest

LABEL maintainer="Fabio Potame <fabiopotame@gmail.com>"

COPY ./sonar-scanner-cli/4.0 /opt/sonar-scanner

RUN  apk --update add --no-cache openjdk8-jre-base ca-certificates \
	&& ln -s /opt/sonar-scanner/bin/sonar-scanner /usr/bin/sonar-scanner
