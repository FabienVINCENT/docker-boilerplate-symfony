FROM php:8.0.8-fpm-alpine3.13

# Install dependencies
RUN apk --no-cache update && apk --no-cache add bash git icu-dev libzip-dev libxml2-dev \
    && docker-php-ext-configure intl \
    && docker-php-ext-install intl \
    && docker-php-ext-install mysqli pdo pdo_mysql \
    && docker-php-ext-enable pdo_mysql \
    && docker-php-ext-install zip xml

RUN curl --insecure https://getcomposer.org/composer.phar -o /usr/bin/composer && chmod +x /usr/bin/composer

# Symfony CLI
RUN wget https://get.symfony.com/cli/installer -O - | bash && mv /root/.symfony/bin/symfony /usr/local/bin/symfony

# Set timezone
#RUN rm /etc/localtime
RUN ln -s /usr/share/zoneinfo/Europe/France /etc/localtime
RUN "date"

# Set workdir
WORKDIR /var/www/symfony