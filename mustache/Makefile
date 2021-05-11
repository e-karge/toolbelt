image=toolbelt/mustache
include ../Makefile.default

build: build-default
	buildah config --user operator --cmd '[]' --entrypoint '[ "/usr/bin/mustache" ]' $(image)

test:
	podman run --rm --pull never -t localhost/$(image):$(tag) --version 1>/dev/null
