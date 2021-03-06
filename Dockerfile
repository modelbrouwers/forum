FROM php:5.6-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
        libpq-dev \
        libz-dev \
        libmemcached-dev \
    && docker-php-ext-install mysqli pgsql \
    && docker-php-ext-configure gd \
        --with-freetype-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd \
    && pecl install memcached-2.2.0 \
    && docker-php-ext-enable memcached

RUN a2enmod rewrite

COPY config/php.ini /usr/local/etc/php/
