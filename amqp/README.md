
amqp
====

Docker image for [rabbitmq-c](https://github.com/alanxz/rabbitmq-c)'s set of
command-line utils. To use run

```bash
docker run --rm -ti toolbelt/amqp <command>
```

where `<command>` can must one of `consume`, `declare-queue`, `delete-queue`,
`get` or `publish`. For invocation details run

```bash
docker run --rm -ti toolbelt/amqp <command> --help
```
