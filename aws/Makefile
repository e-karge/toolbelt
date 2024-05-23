image=toolbelt/aws
include ../Makefile.default

$(ARCH:%=build-%): build-%: clean manifest
	buildah --arch $(@:build-%=%) --name $(image):$(@:build-%=%) from --pull-always docker.io/alpine:3.19
	buildah config --created-by 'buildah' $(image):$(@:build-%=%)
	if [ -f install.sh ]; then buildah run $(image):$(@:build-%=%) /bin/sh -e <install.sh; fi
	if [ -d overlay ]; then buildah copy $(image):$(@:build-%=%) overlay/ /; fi
	buildah config --user aws --cmd '[]' --entrypoint '[ "/usr/bin/aws" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never $(image):$* --version 1>/dev/null
