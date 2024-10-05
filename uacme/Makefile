image=toolbelt/uacme
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user operator --entrypoint '[ "/usr/bin/uacme" ]' --volume /etc/ssl/uacme --volume /etc/ssl/uacme/private --volume /var/db/uacme/certificates $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never localhost/$(image):$* new -y -a https://acme-staging-v02.api.letsencrypt.org/directory 1>/dev/null
