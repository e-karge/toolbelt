apk add --no-cache podman

adduser -h /podman -g 'run it!' -s /bin/nologin -k /var/empty podman -D

echo podman:1001:9999 >/etc/subuid
echo podman:1001:9999 >/etc/subgid

install -o podman -g podman -m 00700 -d /podman/.config
install -o podman -g podman -m 00700 -d /podman/.config/containers
install -o podman -g podman -m 00700 -d /podman/.local
install -o podman -g podman -m 00700 -d /podman/.local/share
install -o podman -g podman -m 00700 -d /podman/.local/share/containers
ln -s .local/share/containers /podman/
