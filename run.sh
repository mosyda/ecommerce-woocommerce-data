#!/bin/bash
curl -s -o /tmp/temp "https://www.prestashop.com/download/old/prestashop_$PS_VERSION.zip"
unzip -q /tmp/temp -d /tmp
cp -rf /tmp/prestashop/* /var/www/html
rm -rf /tmp/*
chown -R www-data:www-data /var/www
chmod -Rf 777 /var/www/html/modules/seqr

exec /bin/true
