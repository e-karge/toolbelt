FROM alpine

RUN apk --no-cache add syslog-ng syslog-ng-json
COPY syslog-ng.conf /etc/syslog-ng/

VOLUME /run/syslog
EXPOSE 514/udp 601/tcp

ENTRYPOINT [ "/usr/sbin/syslog-ng" ]
CMD [ "-F" ]
