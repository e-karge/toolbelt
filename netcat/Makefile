image=toolbelt/netcat
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user operator --cmd '[]' --entrypoint '[ "/usr/bin/nc" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	echo fire and forget | podman run --arch $* --rm --pull never -i $(image):$* -u ::1 12345
