apk add --no-cache syslog-ng syslog-ng-json

adduser -h /run/syslog-ng -g 'log it!' -s /bin/nologin -k /var/empty syslog-ng -D

install -o syslog-ng -g syslog-ng -m 00700 -D -d /run/syslog-ng
