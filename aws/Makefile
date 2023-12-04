image=toolbelt/aws
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user aws --cmd '[]' --entrypoint '[ "/usr/bin/aws" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never $(image):$* --version 1>/dev/null
