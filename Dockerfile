FROM php:7.0-apache

MAINTAINER Krennic

LABEL grav.version=1.1.17 \
      php.version=7.0

COPY grav-admin/ /var/www/html/