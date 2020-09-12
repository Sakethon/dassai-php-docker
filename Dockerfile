FROM php:7.4-fpm-buster

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apt update && apt install -y git libzip-dev zip unzip libpq-dev
RUN docker-php-ext-install bcmath pgsql pdo_pgsql
