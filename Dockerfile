FROM php:7.3-fpm

RUN docker-php-ext-install pdo pdo_mysql
RUN curl --silent --show-error https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www

COPY . /var/www

EXPOSE 9000