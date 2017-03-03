FROM alpine

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories \
&& apk add --no-cache rabbitmq-c-utils

COPY amqp /usr/bin/

ENTRYPOINT [ "/usr/bin/amqp" ]
