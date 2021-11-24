docker run --rm -it \
-v /letsencrypt/certbot/etc/letsencrypt:/etc/letsencrypt \
-v /letsencrypt/certbot/var/log/letsencrypt:/var/log/letsencrypt \
-v /letsencrypt/site:/data/letsencrypt \
certbot/certbot \
certonly --webroot \
--email example@example.com --agree-tos --no-eff-email \
--webroot-path=/data/letsencrypt \
-d example.com -d www.example.com
