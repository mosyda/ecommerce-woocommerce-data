#!/bin/bash -x

if [ -z "$1" ]
  then
    echo "First argument should be a wordpress version (at least 3.7). No version supplied"
fi

# Wait for MySQL
while ! mysqladmin ping -h localhost --silent; do
    sleep 1
done

mysql -u root -e "CREATE DATABASE IF NOT EXISTS \`wordpress\` CHARACTER SET utf8 COLLATE utf8_general_ci;"

cd /var/www/html
/var/www/html/wp-cli core download --version=$1 --allow-root
/var/www/html/wp-cli core config --dbname=wordpress --dbuser=root --allow-root
/var/www/html/wp-cli core install --url=http://localhost:8080/wordpress/ --title=WordPress --admin_user=admin --admin_password=admin123 --admin_email=somefakeemail@fakedomain.com --allow-root


