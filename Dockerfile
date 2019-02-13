FROM php:7.3-apache

RUN apt-get update -y \
    && apt-get install -y \
        libmagickwand-dev \
    && rm -rf /var/lib/apt/lists/* \
    && pecl install imagick-beta \
    && echo "extension=imagick.so" > /usr/local/etc/php/conf.d/ext-imagick.ini

RUN apt-get install -y libpng-dev

RUN docker-php-ext-install mysqli pdo_mysql gd mbstring
RUN sed -ri -e '/<Directory \/var\/www\/>/,/<\/Directory>/ s/AllowOverride None/AllowOverride all/' /etc/apache2/apache2.conf
RUN a2enmod rewrite
