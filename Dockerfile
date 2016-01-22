FROM alpine:3.3

RUN apk add --update unbound ; \
    rm -rf /var/cache/apk/* ;

EXPOSE 53/udp 53/tcp

VOLUME /etc/unbound

ENTRYPOINT ["unbound"]
CMD ["-d"]
