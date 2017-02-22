FROM php:7.0-apache

MAINTAINER Krennic

LABEL grav.version=1.1.17 \
      php.version=7.0

RUN apt-get update && \
	apt-get install -y python-software-properties software-properties-common && \
	add-apt-repository ppa:ondrej/php && \
	apt-get update && apt-get install -y --no-install-recommends\
    php7.0-zip \
    php7.0-gd \
    && rm -rf /var/lib/apt/lists/*

COPY grav-admin/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html && \
    echo "LoadModule rewrite_module /usr/lib/apache2/modules/mod_rewrite.so" > /etc/apache2/mods-enabled/rewrite.load
