FROM php:8.2-cli

RUN apt-get update && apt-get install -y \
    unzip curl git libzip-dev zip libpng-dev libonig-dev libxml2-dev \
    libicu-dev libjpeg-dev libfreetype6-dev \
    && docker-php-ext-install pdo pdo_mysql zip mbstring exif pcntl bcmath gd intl

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# 🔥 FIX NODE VERSION
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

ENV CACHE_DRIVER=file
ENV SESSION_DRIVER=file
ENV QUEUE_CONNECTION=sync

RUN touch database/database.sqlite

RUN composer install --no-dev --optimize-autoloader --ignore-platform-reqs

RUN php artisan config:clear || true \
    && php artisan route:clear || true \
    && php artisan view:clear || true

RUN npm run build

RUN chmod -R 777 storage bootstrap/cache

EXPOSE 10000

CMD php -S 0.0.0.0:10000 -t public