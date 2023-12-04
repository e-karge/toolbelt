image=toolbelt/jq
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user operator --cmd '[]' --entrypoint '[ "/usr/bin/jq" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* --version 1>/dev/null
