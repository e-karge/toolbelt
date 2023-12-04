image=toolbelt/xml-json
include ../Makefile.default

$(ARCH:%=build-%): build-%: build-default-%
	buildah config --user operator --cmd '[]' --entrypoint '[ "xml-json" ]' $(image):$*

$(ARCH:%=test-%): test-%:
	test '"text"' = `echo '<xml>text</xml>' | podman run --arch $* --rm --pull never -i localhost/$(image):$* xml`
