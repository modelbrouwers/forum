FROM php:5.6-apache

RUN a2enmod rewrite

COPY phpBB3 /var/www/html/phpBB3
