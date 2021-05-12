apk --no-cache add tinyproxy
sed 's/^Allow /#Allow /' -i /etc/tinyproxy/tinyproxy.conf
