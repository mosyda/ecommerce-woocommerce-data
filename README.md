# seqr-prestashop-data
Docker data container for prestashop

## How to run this
Mapping local plugin dev directory to the Prestashop data container.

```bash  
export DEV_DIR /home/yourhome/path/to/seqr/plugin

docker-compose up -d

```

Your Prestashop site will be available on the **8080** port.

## Available ports
 * 8080: Prestashop site
 * 3306: mysql database
 * 9000: Xdebug extension for PHP debugging

## Prestashop database

  username: **root**

  password:
