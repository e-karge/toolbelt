FROM alpine

RUN apk add --no-cache --virtual=build-dependencies build-base python-dev py2-pip \
    && apk add --no-cache python groff less \
    && pip install awscli \
    && apk del build-dependencies

ENTRYPOINT [ "/usr/bin/aws" ]
