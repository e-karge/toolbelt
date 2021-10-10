image=toolbelt/kubectl
include ../Makefile.default

build: build-default
	buildah config --user k8s --cmd '[]' --entrypoint '[ "/usr/bin/kubectl" ]' $(image)

test:
	podman run --rm --pull never localhost/$(image):$(tag) version --client 1>/dev/null
