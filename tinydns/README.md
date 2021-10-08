[![build status](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml/badge.svg)](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml)
[![image size](https://img.shields.io/docker/image-size/toolbelt/tinydns/latest?logo=docker)](https://hub.docker.com/repository/docker/toolbelt/tinydns)

[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/github.svg" alt="source code">](https://github.com/e-karge/toolbelt/tree/master/tinydns)
[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/docker.svg" alt="docker image">](https://hub.docker.com/repository/docker/toolbelt/tinydns)


tinydns
=========

Docker image for [tinydns](http://cr.yp.to/djbdns.html). To use run

```bash
docker run --rm -ti --volume tinydns-data:/run/tinydns --port 53:53/udp toolbelt/tinydns
```

New DNS entries can be added using

```bash
docker run --rm -ti --volume tinydns-data:/run/tinydns --port 53:53/udp toolbelt/tinydns edit data data.temp add host <fqdn> <ip>
```

To update the binary data file run

```bash
docker run --rm -ti --volume tinydns-data:/run/tinydns --port 53:53/udp toolbelt/tinydns data
```

