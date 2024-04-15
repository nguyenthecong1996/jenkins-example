FROM php:8.2-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

# Install system dependencies
RUN apk update && apk add --no-cache \
    nodejs \
    npm \
    git \
    zlib-dev \
    libzip-dev \
    unzip \
    libpng-dev \
    libjpeg-turbo-dev \
    freetype-dev

RUN printf "\n" | npm install -g svgo
# Set working directory
WORKDIR /var/www

# Copy the rest of the application files
COPY . .

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
COPY --from=composer /usr/bin/composer /usr/bin/composer
