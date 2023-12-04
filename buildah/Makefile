image=toolbelt/buildah
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user buildah --cmd '[]' --entrypoint '[ "/usr/bin/buildah" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* version 1>/dev/null
