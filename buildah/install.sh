echo @testing https://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories
echo @testing https://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
apk add --no-cache buildah@testing crun

adduser -h /buildah -g 'build it!' -s /bin/nologin -k /var/empty buildah -D
echo buildah:buildah | chpasswd

echo buildah:1001:9999 >/etc/subuid
echo buildah:1001:9999 >/etc/subgid

ls -l /
install -o buildah -g buildah -m 00700 -d /buildah/.local
install -o buildah -g buildah -m 00700 -d /buildah/.local/share
install -o buildah -g buildah -m 00700 -d /buildah/.local/share/containers
ln -s .local/share/containers /buildah/
