image=toolbelt/nodejs
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user operator --entrypoint '[ "/usr/bin/node" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* --version 1>/dev/null
