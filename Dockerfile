FROM php:7.3.1-fpm

# install dependencies
RUN apt-get update && \
    apt-get install -y libicu-dev git vim iputils-ping procps sudo dnsutils && \
    rm -r /var/lib/apt/lists/* 
RUN docker-php-ext-install intl pdo pdo_mysql
RUN cd /usr/local/etc/php && mv php.ini-development php.ini

# add code
#RUN git clone https://github.com/srvaudit/warroom.git /var/www/warroom

# laravel setup
#RUN chown -R www-data:www-data /var/www/warroom/storage
#RUN chmod -R gu+w /var/www/warroom/storage
#RUN chmod -R gu+w /var/www/warroom/bootstrap/cache
