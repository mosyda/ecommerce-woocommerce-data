#!/bin/bash

curl -O -s https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /var/www/html/wp-cli

if [ -n "$1" ]; then
	exec $1
elseif
	exec /bin/true
fi
