#!/bin/bash

docker run -it --rm \
-v /letsencrypt/certbot/etc/letsencrypt:/etc/letsencrypt \
-v /letsencrypt/certbot/var/lib/letsencrypt:/var/lib/letsencrypt \
-v /letsencrypt/certbot/var/log/letsencrypt:/var/log/letsencrypt \
-v /letsencrypt/example:/data/letsencrypt \
certbot/certbot \
renew --webroot -w /data/letsencrypt --quiet
