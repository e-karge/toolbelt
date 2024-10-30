image=toolbelt/dnsmasq
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user operator --entrypoint '[ "/usr/sbin/dnsmasq" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* -v 1>/dev/null
