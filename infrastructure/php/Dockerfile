FROM php:8.1-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
        wget \
        libzip-dev \
        zip \
        unzip \
        p7zip-full \
        sendmail \
        ca-certificates \
        && docker-php-ext-install zip mysqli pdo pdo_mysql opcache

# Install composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer