image=toolbelt/syslog-ng
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config \
	--volume /run/syslog-ng \
	--port '514/udp,601/tcp' \
	--entrypoint '[ "/usr/sbin/syslog-ng", "--persist-file", "/run/syslog-ng/persist" ]' --cmd '[ "-F" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	podman run --arch $* --rm --pull never -i localhost/$(image):$* --version 1>/dev/null
