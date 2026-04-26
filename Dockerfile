FROM php:8.2-cli

# Cài thư viện hệ thống + PHP extensions
RUN apt-get update && apt-get install -y \
    unzip curl git libzip-dev zip \
    && docker-php-ext-install pdo pdo_mysql zip

# Cài Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Cài NodeJS (để build Vue)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

WORKDIR /app

# Copy toàn bộ project
COPY . .

# Cài Laravel
RUN composer install --no-dev --optimize-autoloader

# Build Vue (vite)
RUN npm install && npm run build

# Fix permission (rất quan trọng)
RUN chmod -R 775 storage bootstrap/cache

EXPOSE 10000

# Chạy app
CMD php artisan serve --host=0.0.0.0 --port=10000