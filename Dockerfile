FROM alpine:3.4

VOLUME /root/.caddy

EXPOSE 80 443

ENTRYPOINT ["start-caddy"]

RUN apk update && \
    apk upgrade && \
    apk add caddy && \
    rm -rf /var/cache/apk/*

COPY start-caddy /bin