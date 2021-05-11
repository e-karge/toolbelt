[![build status](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml/badge.svg)](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml)
[![image size](https://img.shields.io/docker/image-size/toolbelt/aws/latest?logo=docker)](https://hub.docker.com/repository/docker/toolbelt/aws)

[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/github.svg" alt="source code">](https://github.com/e-karge/toolbelt/tree/master/aws)
[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/docker.svg" alt="docker image">](https://hub.docker.com/repository/docker/toolbelt/aws)

aws
===

Docker image for Amazons
[AWS command line interface](https://github.com/aws/aws-cli). To use run

```bash
docker run --rm -ti toolbelt/aws
```

It's probably a good idea to mount `~/.aws`

```bash
docker run --rm --volume "$HOME/.aws:/aws/.aws:ro" -ti toolbelt/aws
```

See [here](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-using.html)
for usage details.
