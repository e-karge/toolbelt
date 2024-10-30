[![build status](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml/badge.svg)](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml)
[![image size](https://img.shields.io/docker/image-size/toolbelt/dnsmasq/latest?logo=docker)](https://hub.docker.com/repository/docker/toolbelt/dnsmasq)

[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/github.svg" alt="source code">](https://github.com/e-karge/toolbelt/tree/master/dnsmasq)
[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/docker.svg" alt="docker image">](https://hub.docker.com/repository/docker/toolbelt/dnsmasq)

dnsmasq
===

Docker image for [dnsmasq](https://thekelleys.org.uk/dnsmasq/doc.html).
To use run

```bash
docker run --rm -ti --cap-add CAP_NET_BIND_SERVICE -p 53:53 -p 53:53/udp toolbelt/dnsmasq -d
```

See [here](https://thekelleys.org.uk/dnsmasq/docs/dnsmasq-man.html)
for invocation details.
