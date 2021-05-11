image=toolbelt/drill
include ../Makefile.default

build: build-default
	buildah config --user operator --cmd '[]' --entrypoint '[ "/usr/bin/drill" ]' $(image)

test:
	podman run --rm --pull never localhost/$(image):$(tag) -v 1>/dev/null
