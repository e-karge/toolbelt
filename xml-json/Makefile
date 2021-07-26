image=toolbelt/xml-json
include ../Makefile.default

build: build-default
	buildah config --user operator --cmd '[]' --entrypoint '[ "xml-json" ]' $(image)

test:
	test '"text"' = `echo '<xml>text</xml>' | podman run --rm --pull never -i localhost/$(image):$(tag) xml`
