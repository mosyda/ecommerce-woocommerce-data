FROM ubuntu:14.04
MAINTAINER Kamil Manka <kamil.manka@seamless.se>

RUN DEBIAN_FRONTEND=noninteractive apt-get -y install unzip curl

ADD get_prestashop.sh /get_prestashop.sh
RUN chmod +x /get_prestashop.sh
RUN mkdir -p /var/www/html

# apache config
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
RUN chown -R www-data:www-data /var/www/

VOLUME /var/www/html

CMD ["/get_prestashop.sh"]
