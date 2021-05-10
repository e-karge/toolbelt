REGISTRY?=localhost:5000
image=toolbelt/amqp

all: clean build test

build:
	buildah --name $(image) from --pull-always docker.io/alpine
	buildah run $(image) /bin/sh <install.sh
	buildah copy $(image) overlay/ /
	buildah config --entrypoint '[ "/usr/bin/amqp" ]' --cmd '' $(image)
	buildah commit --rm $(image) $(image):latest

test:
	test "`podman run --rm toolbelt/amqp`" = "`printf 'amqp consume\namqp declare-queue\namqp delete-queue\namqp get\namqp publish\n'`"
	podman run --rm toolbelt/amqp get --usage 1>/dev/null

push:
	buildah push --format v2s2 $(image):latest "$(REGISTRY)/$(image):latest"
	buildah tag $(image):latest "$(REGISTRY)/$(image):latest"

clean:
	-buildah rm $(image)/test
	-buildah rm $(image)
	-buildah rmi $(image)
