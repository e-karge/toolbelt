image=toolbelt/oathtool
include ../Makefile.default

build: build-default
	buildah config --user operator --cmd '[]' --entrypoint '[ "/usr/bin/oathtool" ]' $(image)

test:
	podman run --rm --pull never localhost/$(image):$(tag) --version 1>/dev/null
