image=toolbelt/curl
include ../Makefile.default

build: build-default
	buildah config --user operator --cmd '[]' --entrypoint '[ "/usr/bin/curl" ]' $(image)

test:
	podman run --rm --pull never localhost/$(image):$(tag) --version 1>/dev/null
