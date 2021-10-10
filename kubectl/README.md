[![build status](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml/badge.svg)](https://github.com/e-karge/toolbelt/actions/workflows/build.yaml)
[![image size](https://img.shields.io/docker/image-size/toolbelt/kubectl/latest?logo=docker)](https://hub.docker.com/repository/docker/toolbelt/kubectl)

[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/github.svg" alt="source code">](https://github.com/e-karge/toolbelt/tree/master/kubectl)
[<img height="24" width="24" src="https://unpkg.com/simple-icons@4/icons/docker.svg" alt="docker image">](https://hub.docker.com/repository/docker/toolbelt/kubectl)

kubectl
=======

Docker image for Kubernetes cluster manger CLI
[kubectl](https://kubernetes.io/docs/reference/kubectl/overview/). To use run

```bash
docker run --rm -ti toolbelt/kubectl
```

It's probably a good idea to mount `~/.kube`

```bash
docker run --rm --volume "$HOME/.kube:/k8s/.kube:ro" -ti toolbelt/kubectl
```

See [here](https://kubernetes.io/docs/reference/kubectl/kubectl/)
for usage details.
