#!/bin/bash sh

mkdir -p /var/app/var/cache
mkdir -p /var/app/web/compiled

composer run-script post-install-cmd --no-interaction

chmod -R 0777 /var/app/var/cache
chmod -R 0777 /var/app/web/compiled

service postfix start

chmod +x /var/app/docker/supervisor-manager.sh

./docker/supervisor-manager.sh start


exec apache2-foreground