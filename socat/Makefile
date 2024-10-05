image=toolbelt/socat
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user operator --entrypoint '[ "/usr/bin/socat" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* -V 1>/dev/null
