image=toolbelt/dig
include ../Makefile.default

build: build-default
	buildah config --user operator --cmd '[]' --entrypoint '[ "/usr/bin/dig" ]' $(image)

test:
	podman run --rm --pull never localhost/$(image):$(tag) -v 1>/dev/null
