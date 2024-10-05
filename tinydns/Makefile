image=toolbelt/tinydns
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --port 8888 --volume /run/tinydns --entrypoint '[ "/usr/bin/tinydns" ]' --env "IP=0.0.0.0" --env "UID=53" --env "GID=53" --env ROOT=/run/tinydns $(image):$*

$(ARCH:%=test-%): test-%:
	$(eval POD=$(shell podman pod create))
	trap 'podman pod rm --force $(POD)' exit ;\
	podman run --arch $* --pod=$(POD) --rm --volume "$$PWD/test-data:/run/tinydns" --workdir /run/tinydns --detach --pull=never localhost/$(image):$* ;\
	podman run --arch $* --rm --pod $(POD) docker.io/library/alpine /bin/sh -c 'sleep 2; test "\"expected txt record\"" == "$$(nslookup -type=TXT test 127.0.0.1 | sed -n "s/test\ttext = //p")"' ;\
