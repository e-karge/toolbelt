image=toolbelt/netcat
include ../Makefile.default

build: build-default
	buildah config --user operator --cmd '[]' --entrypoint '[ "/usr/bin/nc" ]' $(image)

test:
	echo fire and forget | podman run --rm --pull never -i localhost/$(image):$(tag) -u ::1 12345
