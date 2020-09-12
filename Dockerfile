FROM php:7.4-fpm-buster

WORKDIR /usr/local/bin

RUN apt update && apt install -y git libzip-dev zip unzip libpq-dev

RUN docker-php-ext-install bcmath pgsql pdo_pgsql

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" | php
RUN php -r "unlink('composer-setup.php');"
