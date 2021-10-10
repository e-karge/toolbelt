echo @testing https://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories
apk add --no-cache kubectl@testing

adduser -h /k8s -g 'Kubernetes cluster manager CLI' -s /bin/nologin -k /var/empty k8s -D
