image=toolbelt/amqp
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user operator --entrypoint '[ "/usr/bin/amqp" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	test "`podman run --arch $* --rm --pull never localhost/$(image):$*`" = "`printf 'amqp consume\namqp declare-queue\namqp delete-queue\namqp get\namqp publish\n'`"
	podman run --arch $* --rm --pull never localhost/$(image):$* get --usage 1>/dev/null
