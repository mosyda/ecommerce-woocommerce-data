#!/bin/bash
curl -s -o /tmp/temp "https://www.prestashop.com/download/old/prestashop_$PS_VERSION.zip"
unzip -q /tmp/temp -d /var/www/html
mv /var/www/html/prestashop/* /var/www/html
rm -rf /var/www/html/prestashop
rm /tmp/temp
chown -R www-data:www-data /var/www\

while true; do true; done
