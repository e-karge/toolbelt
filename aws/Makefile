image=toolbelt/aws
include ../Makefile.default

build: build-default
	buildah config --user aws --cmd '[]' --entrypoint '[ "/usr/bin/aws" ]' $(image)

test:
	podman run --rm --pull never localhost/$(image):$(tag) --version 1>/dev/null
