image=toolbelt/socat
include ../Makefile.default

build: build-default
	buildah config --user operator --cmd '[]' --entrypoint '[ "/usr/bin/socat" ]' $(image)

test:
	podman run --rm --pull never localhost/$(image):$(tag) -V 1>/dev/null
