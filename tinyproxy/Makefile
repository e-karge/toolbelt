image=toolbelt/tinyproxy
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user operator --port 8888 --entrypoint '[ "/usr/bin/tinyproxy" ]' --cmd '[ "-d" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* -v 1>/dev/null
