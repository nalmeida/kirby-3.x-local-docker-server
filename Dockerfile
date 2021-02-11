FROM php:7.4-apache

RUN chown -R www-data:www-data /var/www/html
RUN a2enmod rewrite

RUN apt-get update
RUN apt-get install -y nano vim curl libpng-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev libgmp-dev libldap2-dev netcat zlib1g-dev libzip-dev

# libonig-dev is the replacement of mbstring for php 7.4
RUN apt-get install -y libonig-dev

RUN docker-php-ext-configure gd --with-freetype --with-jpeg
RUN docker-php-ext-install gd
RUN docker-php-ext-install ctype