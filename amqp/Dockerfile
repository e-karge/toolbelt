FROM alpine

RUN apk add --no-cache rabbitmq-c-utils

COPY amqp /usr/bin/

ENTRYPOINT [ "/usr/bin/amqp" ]
