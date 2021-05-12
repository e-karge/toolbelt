image=toolbelt/tinyproxy
include ../Makefile.default

build: build-default
	buildah config --user operator --port 8888 --entrypoint '[ "/usr/bin/tinyproxy" ]' --cmd '[ "-d" ]' $(image)

test:
	podman run --rm --pull never localhost/$(image):$(tag) -v 1>/dev/null
