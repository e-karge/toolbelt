image=toolbelt/syslog-ng
include ../Makefile.default

build: build-default
	buildah config \
	--volume /run/syslog-ng \
	--port '514/udp,601/tcp' \
	--entrypoint '[ "/usr/sbin/syslog-ng", "--persist-file", "/run/syslog-ng/persist" ]' --cmd '[ "-F" ]' $(image)

test:
	podman run --rm --pull never -i localhost/$(image):$(tag) --version 1>/dev/null
