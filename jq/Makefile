image=toolbelt/jq
include ../Makefile.default

build: build-default
	buildah config --user operator --cmd '[]' --entrypoint '[ "/usr/bin/jq" ]' $(image)

test:
	podman run --rm --pull never localhost/$(image):$(tag) --version 1>/dev/null
