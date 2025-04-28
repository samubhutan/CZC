# Dockerfile

FROM wordpress:php8.3-apache

# Copy English wp-content
COPY wp-content-en/ /var/www/html/wp-content/

# Copy Dzongkha site to /dz
RUN mkdir -p /var/www/html/dz
COPY wp-content-dz/ /var/www/html/dz/wp-content/

RUN echo "<?php include_once('../index.php'); ?>" > /var/www/html/dz/index.php

# Set proper permissions
RUN chown www-data:www-data /var/www/html/dz/index.php
RUN chmod 644 /var/www/html/dz/index.php

# Shared wp-config
COPY wp-config.php /var/www/html/wp-config.php

# Set permissions
RUN chown -R www-data:www-data /var/www/html && \
    chmod -R 755 /var/www/html

# PHP limits
RUN echo "upload_max_filesize = 50M" >> /usr/local/etc/php/conf.d/uploads.ini && \
    echo "post_max_size = 50M" >> /usr/local/etc/php/conf.d/uploads.ini && \
    echo "memory_limit = 256M" >> /usr/local/etc/php/conf.d/uploads.ini
