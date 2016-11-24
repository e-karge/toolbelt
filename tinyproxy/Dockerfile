FROM alpine

RUN apk --no-cache add tinyproxy

EXPOSE 8888

ENTRYPOINT [ "/usr/sbin/tinyproxy", "-d" ]
