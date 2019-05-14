
syslog-ng
=========

Docker image for [syslog-ng-ose](https://www.syslog-ng.com/products/open-source-log-management/). To use run

```bash
docker run --rm -ti toolbelt/socat
```

See [here](https://www.syslog-ng.com/technical-documents/doc/syslog-ng-open-source-edition/3.21/administration-guide/91#TOPIC-1180721) for invocation details.

The default configuration takes inputs via unix datagram socker (/run/syslog/log), UDP (port 514) and TCP (port 601) and logs to /dev/stdout.
