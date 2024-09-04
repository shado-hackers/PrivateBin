# Use the official PHP image with Apache
FROM php:7.4-apache

# Install necessary PHP extensions
RUN docker-php-ext-install pdo mbstring

# Enable Apache's mod_rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy the current directory contents into the container
COPY . /var/www/html/

# Change ownership and permissions of the files
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
