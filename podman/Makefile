image=toolbelt/podman
include ../Makefile.default

build: build-default
	buildah config --user podman --cmd '[]' --entrypoint '[ "/usr/bin/podman" ]' $(image)

test:
	podman run --rm --pull never --privileged localhost/$(image):$(tag) version 1>/dev/null
