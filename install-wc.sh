#!/bin/bash -x

# Wait for MySQL
while ! mysqladmin ping -h localhost --silent; do
    sleep 1
done

mysql -u root -e "CREATE DATABASE IF NOT EXISTS \`wordpress\` CHARACTER SET utf8 COLLATE utf8_general_ci;"

cd /var/www/html
/var/www/html/wp-cli core download --version=3.5 --allow-root
/var/www/html/wp-cli core config --dbname=wordpress --dbuser=root --dbpass=root --allow-root
/var/www/html/wp-cli core install --url=http://localhost:8888/wordpress/ --title=WordPress --admin_user=admin --admin_password=admin123 --admin_email=somefakeemail@fakedomain.com --allow-root


