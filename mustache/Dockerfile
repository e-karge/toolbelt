FROM alpine

RUN apk --no-cache add ruby && gem install mustache

ENTRYPOINT [ "/usr/bin/mustache" ]
