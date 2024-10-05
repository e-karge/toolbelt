image=toolbelt/podman
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user podman --entrypoint '[ "/usr/bin/podman" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never --privileged localhost/$(image):$* -v 1>/dev/null
