### ecommerce-prestashop-data
Docker data container for prestashop

#### How to run this

```bash  

docker run -e PS_VERSION=1.6.1.3 ikamman/ecommerce-prestashop-data

```

##### Mounting /var/www/html to the local machine

```bash

docker run docker run -e PS_VERSION=1.6.1.3 -v /home/user/html:/var/www/html ikamman/ecommerce-prestashop-data

```

##### Mounting only plugin directory to the local machine

```bash

docker run docker run -e PS_VERSION=1.6.1.3 -e PLUGIN_NAME=new_plugin -v /home/user/local_plugin:/var/www/html/new_plugin ikamman/ecommerce-prestashop-data

```

Please make sure that your **PLUGIN_NAME** match the destination directory name of the volume mounting

#### Directory permissions

The **www-data** is an owner/group of the /var/www/html container directory. If you're mounting this directory to the local file system make sure your **www-data** user/group exists in your system. The alternative is to grant access to ALL users on your local directory. This will allow the container process to write to it.  
