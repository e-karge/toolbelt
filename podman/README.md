[![build status](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml/badge.svg)](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml)
[![image size](https://img.shields.io/docker/image-size/toolbelt/podman/latest?logo=docker)](https://hub.docker.com/repository/docker/toolbelt/podman)

[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/github.svg" alt="source code">](https://github.com/e-karge/toolbelt/tree/master/podman)
[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/docker.svg" alt="docker image">](https://hub.docker.com/repository/docker/toolbelt/podman)

podman
=======

Docker image for [podman](https://podman.io/).
It's a bit like [dind](https://hub.docker.com/_/docker),
but with podman (pind?, pinp?, nah). To use run

```bash
docker run --privileged --rm --volume containers:/podman/containers -ti toolbelt/podman
```

Custom configuration may be mounted into `/etc/containers` like

```bash
docker run --privileged --rm --volume containers:/podman/containers --volume containers-config:/etc/containers:ro -ti toolbelt/podman
```

Keep in mind `podman` runs as non-root user with ten of thousands
(literally, there are 10000) uids and gids at it's disposal.
If that's not enough, running as `root` is an option (please take
note of the changed target path of the `containers` volume):

```bash
docker run --privileged --rm --user root --volume containers:/var/lib/containers -ti toolbelt/podman
```

See [here](http://docs.podman.io/en/latest/Commands.html)
for further invocation details.
