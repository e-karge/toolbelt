image=toolbelt/mustache
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user operator --cmd '[]' --entrypoint '[ "/usr/bin/mustache" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never -t localhost/$(image):$* --version 1>/dev/null
