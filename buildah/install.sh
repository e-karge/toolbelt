apk add --no-cache buildah crun netavark passt

adduser -h /buildah -g 'build it!' -s /bin/nologin -k /var/empty buildah -D

echo buildah:1001:999999 >/etc/subuid
echo buildah:1001:999999 >/etc/subgid

install -o buildah -g buildah -m 00700 -d /buildah/.config
install -o buildah -g buildah -m 00700 -d /buildah/.local
install -o buildah -g buildah -m 00700 -d /buildah/.local/share
install -o buildah -g buildah -m 00700 -d /buildah/.local/share/containers
ln -s .local/share/containers /buildah/
