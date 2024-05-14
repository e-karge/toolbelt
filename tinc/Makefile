image=toolbelt/tinc
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --port 655 --volume /run/tinc --entrypoint '[ "/usr/sbin/tincd" ]' --cmd '[ "-c", "/run/tinc", "-D" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* --version 1>/dev/null
