FROM php:8.2-cli

# Cài đủ extension Laravel cần
RUN apt-get update && apt-get install -y \
    unzip curl git libzip-dev zip libpng-dev libonig-dev libxml2-dev \
    && docker-php-ext-install pdo pdo_mysql zip mbstring exif pcntl bcmath gd

# Cài Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Cài Node (build Vue)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs

WORKDIR /app

COPY . .

# ⚠️ FIX QUAN TRỌNG: bỏ check platform
RUN composer install --no-dev --optimize-autoloader --ignore-platform-reqs

RUN npm install
RUN npm run build

# Permission
RUN chmod -R 777 storage bootstrap/cache

EXPOSE 10000

CMD php artisan serve --host=0.0.0.0 --port=10000