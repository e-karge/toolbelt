FROM alpine

RUN echo @edge http://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories \
 && apk add --no-cache oath-toolkit-oathtool@edge

ENTRYPOINT [ "/usr/bin/oathtool" ]
