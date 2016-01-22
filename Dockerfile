FROM alpine:3.3

RUN apk add --update unbound ; \  
    rm -rf /var/cache/apk/* ;

VOLUME /etc/unbound/unbound.conf

EXPOSE 53

CMD ["unbound", "-d"]
