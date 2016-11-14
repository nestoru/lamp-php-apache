FROM php:5.6-apache

MAINTAINER Nestor Urquiza <nestor.urquiza@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && \
    apt-get install -y \
    less vim ssl-cert php5-mysql libmcrypt-dev

RUN a2dismod mpm_event && \
    a2enmod mpm_prefork ssl rewrite && \
    a2ensite default-ssl && \
    make-ssl-cert generate-default-snakeoil --force-overwrite

RUN docker-php-ext-install mysql mysqli pdo pdo_mysql mcrypt

EXPOSE 443
