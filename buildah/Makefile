image=toolbelt/buildah
alpine-tag=edge
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user buildah --entrypoint '[ "/usr/bin/buildah" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* version 1>/dev/null
