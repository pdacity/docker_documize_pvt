FROM alpine:3.7


ARG DOCUMIZE_VERSION
ARG H_PROXY
ARG S_PROXY


ENV DOCUMIZE_VERSION $DOCUMIZE_VERSION
ENV http_proxy $H_PROXY	
ENV https_proxy $S_PROXY	

RUN apk add --no-cache curl

WORKDIR /opt

RUN curl -L -o documize "https://github.com/documize/community/releases/download/${DOCUMIZE_VERSION}/documize-community-linux-amd64" && chmod 755 documize

ADD start.sh /opt

ENTRYPOINT ["./start.sh"]

EXPOSE 80
