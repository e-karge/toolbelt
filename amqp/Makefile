image=toolbelt/amqp
include ../Makefile.default

build: build-default
	buildah config --user operator --cmd '[]' --entrypoint '[ "/usr/bin/amqp" ]' $(image)

test:
	test "`podman run --rm --pull never localhost/$(image):$(tag)`" = "`printf 'amqp consume\namqp declare-queue\namqp delete-queue\namqp get\namqp publish\n'`"
	podman run --rm --pull never localhost/$(image):$(tag) get --usage 1>/dev/null
