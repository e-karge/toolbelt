image=toolbelt/darkhttpd
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user darkhttpd --workingdir /work --entrypoint '[ "/usr/bin/darkhttpd" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* --help 1>/dev/null
