FROM alpine:3.3

RUN apk add --update unbound ; \  
    rm -rf /var/cache/apk/* ;

VOLUME /etc/unbound

#RUN unbound-checkconf

CMD ["unbound"]
