image=toolbelt/oathtool
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user operator --entrypoint '[ "/usr/bin/oathtool" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* --version 1>/dev/null
