[![build status](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml/badge.svg)](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml)

[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/github.svg" alt="source code">](https://github.com/e-karge/toolbelt/tree/master/amqp)
[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/docker.svg" alt="docker image">](https://hub.docker.com/repository/docker/toolbelt/amqp)

amqp
====

Docker image for [rabbitmq-c](https://github.com/alanxz/rabbitmq-c)'s set of
command-line utils. To use run

```bash
docker run --rm -ti toolbelt/amqp <command>
```

where `<command>` should be one of `consume`, `declare-queue`, `delete-queue`,
`get` or `publish`. For invocation details run

```bash
docker run --rm -ti toolbelt/amqp <command> --help
```
