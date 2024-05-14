[![build status](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml/badge.svg)](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml)
[![image size](https://img.shields.io/docker/image-size/toolbelt/tinc/latest?logo=docker)](https://hub.docker.com/repository/docker/toolbelt/tinc)

[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/github.svg" alt="source code">](https://github.com/e-karge/toolbelt/tree/master/tinc)
[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/docker.svg" alt="docker image">](https://hub.docker.com/repository/docker/toolbelt/tinc)


tinc
=========

Docker image for [tinc](https://www.tinc-vpn.org). To use run

```bash
docker run --network host --device /dev/net/tun --cap-add CAP_NET_ADMIN --volume <tinc-config-dir>:/run/tinc --rm -ti toolbelt/tinc
```

Remember: `tincd` toggles debug output on `^C` (`intr`), use `^\` (`quit`) to terminate.

See [here](https://www.tinc-vpn.org/docs/) for configuration and invocation details.
