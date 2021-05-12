[![build status](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml/badge.svg)](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml)
[![image size](https://img.shields.io/docker/image-size/toolbelt/syslog-ng/latest?logo=docker)](https://hub.docker.com/repository/docker/toolbelt/syslog-ng)

[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/github.svg" alt="source code">](https://github.com/e-karge/toolbelt/tree/master/syslog-ng)
[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/docker.svg" alt="docker image">](https://hub.docker.com/repository/docker/toolbelt/syslog-ng)


syslog-ng
=========

Docker image for [syslog-ng-ose](https://www.syslog-ng.com/products/open-source-log-management/). To use run

```bash
docker run --rm -ti toolbelt/syslog-ng
```

See [here](https://www.syslog-ng.com/technical-documents/doc/syslog-ng-open-source-edition/3.30/administration-guide/102#TOPIC-1595249)
for invocation details.

The default configuration takes inputs via unix datagram socker (/run/syslog/log), UDP (port 514) and TCP (port 601) and logs to /dev/stdout.
