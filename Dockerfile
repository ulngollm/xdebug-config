FROM php:8.4.1-cli-alpine3.20

RUN apk add --no-cache --virtual .build-deps $PHPIZE_DEPS \
    #без этой штуки упадет
    && apk add --no-cache --update linux-headers \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && apk del -f .build-deps

WORKDIR /var/www/html

CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html"]
