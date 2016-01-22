FROM alpine:3.3

RUN apk add --update unbound ; \  
    rm -rf /var/cache/apk/* ;

VOLUME /etc/unbound

EXPOSE 53

#RUN unbound-checkconf
ENTRYPOINT ["unbound"]

CMD ["-d"]
