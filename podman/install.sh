echo @testing https://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories
echo @testing https://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
apk add --no-cache podman@testing

adduser -h /podman -g 'run it!' -s /bin/nologin -k /var/empty podman -D

echo podman:1001:9999 >/etc/subuid
echo podman:1001:9999 >/etc/subgid

install -o podman -g podman -m 00700 -d /podman/.local
install -o podman -g podman -m 00700 -d /podman/.local/share
install -o podman -g podman -m 00700 -d /podman/.local/share/containers
ln -s .local/share/containers /podman/
