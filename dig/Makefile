image=toolbelt/dig
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user operator --entrypoint '[ "/usr/bin/dig" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* -v 2>/dev/null
