FROM php:8-alpine AS kilalacms-build

COPY ./composer.json /var/www
WORKDIR /var/www

RUN apk add composer \
            php-xml \
            php-simplexml \
            php-xmlwriter \
            php-mbstring \
            php-tokenizer \
            php-dom \
    && composer install --no-dev

COPY . /var/www/


FROM php:8.3-apache as kilalacms
LABEL org.opencontainers.image.authors="info@kilala.nl"

RUN a2enmod headers && a2enmod rewrite
COPY --from=kilalacms-build /var/www /var/www/html
RUN chown -R www-data:www-data /var/www/html

ENV docker=true
EXPOSE 80
USER www-data

