[![build status](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml/badge.svg)](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml)
[![image size](https://img.shields.io/docker/image-size/toolbelt/buildah/latest?logo=docker)](https://hub.docker.com/repository/docker/toolbelt/buildah)

[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/github.svg" alt="source code">](https://github.com/e-karge/toolbelt/tree/master/buildah)
[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/docker.svg" alt="docker image">](https://hub.docker.com/repository/docker/toolbelt/buildah)

buildah
=======

Docker image for [buildah](https://buildah.io/) using
[crun](https://github.com/containers/crun) as OCI runtime.
It's a bit like [dind](https://hub.docker.com/_/docker),
but with buildah (bind?, nah). To use run

```bash
docker run --privileged --rm --volume containers:/buildah/containers -ti toolbelt/buildah
```

Custom configuration may be mounted into `/etc/containers` like

```bash
docker run --privileged --rm --volume containers:/buildah/containers --volume containers-config:/etc/containers:ro -ti toolbelt/buildah
```

Keep in mind `buildah` runs as non-root user with ten of thousands
(literally, there are 10000) uids and gids at it's disposal.
If that's not enough, running as `root` is an option (please take
note of the changed target path of the `containers` volume):

```bash
docker run --privileged --rm --user root --volume containers:/var/lib/containers -ti toolbelt/buildah
```

See [here](https://github.com/containers/buildah/blob/master/README.md#commands)
for further invocation details.
