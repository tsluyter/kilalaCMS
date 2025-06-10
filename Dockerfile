FROM php:8-alpine
MAINTAINER T. Sluijter-Stek

COPY . /var/www/
WORKDIR /var/www

RUN apk add composer \
            php-xml \
            php-simplexml \
            php-xmlwriter \
            php-mbstring \
            php-tokenizer \
            php-dom \
    && composer install --no-dev \
    && rm -r /var/www/tests/

RUN chown -R www-data:www-data /var/www/ 

EXPOSE 8080
USER www-data

CMD ["/usr/bin/php", "-S", "0.0.0.0:8080", "-t", "public"]

