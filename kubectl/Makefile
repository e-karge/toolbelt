image=toolbelt/kubectl
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user k8s --cmd '[]' --entrypoint '[ "/usr/bin/kubectl" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* version --client 1>/dev/null
