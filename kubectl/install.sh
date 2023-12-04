echo @edge https://dl-cdn.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories
apk add --no-cache kubectl@edge

adduser -h /k8s -g 'Kubernetes cluster manager CLI' -s /bin/nologin -k /var/empty k8s -D
