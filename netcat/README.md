[![build status](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml/badge.svg)](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml)
[![image size](https://img.shields.io/docker/image-size/toolbelt/netcat/latest?logo=docker)](https://hub.docker.com/repository/docker/toolbelt/netcat)

[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/github.svg" alt="source code">](https://github.com/e-karge/toolbelt/tree/master/netcat)
[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/docker.svg" alt="docker image">](https://hub.docker.com/repository/docker/toolbelt/netcat)


netcat
======

Docker image for [Debian port](https://packages.debian.org/unstable/netcat-openbsd)
of [OpenBSD's `netcat`](https://cvsweb.openbsd.org/cgi-bin/cvsweb/src/usr.bin/nc/).
To use run

```bash
docker run --rm -ti toolbelt/netcat
```

See [here](https://manpages.debian.org/unstable/netcat-openbsd/nc.1.en.html) for invocation details.
