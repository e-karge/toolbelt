image=toolbelt/buildah
include ../Makefile.default

build: build-default
	buildah config --user buildah --cmd '[]' --entrypoint '[ "/usr/bin/buildah" ]' $(image)

test:
	podman run --rm --pull never localhost/$(image):$(tag) version 1>/dev/null
