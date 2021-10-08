adduser -h /run/tinydns -s /bin/nologin -u 53 -DH tinydns
apk --no-cache add tinydns
install -o operator -g tinydns -m 00750 -d /run/tinydns
install -o operator -g tinydns -m 00640 /dev/null /run/tinydns/data
