FROM php:7.4-fpm-buster

RUN apt update && apt install -y git libzip-dev zip unzip

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" | php
RUN php -r "unlink('composer-setup.php');"
RUN mv composer.phar /usr/local/bin/composer

RUN composer global require laravel/installer
