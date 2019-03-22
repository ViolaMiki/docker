FROM php:5.4-fpm

### 设置代理
# ENV http_proxy http://docker.for.mac.localhost:1080
# ENV https_proxy http://docker.for.mac.localhost:1080

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
    ### 这里是docker提供的安装php扩展的方法，在这里安装了pdo_mysql扩展还有GD库等
    && docker-php-ext-configure gd --with-freetype-dir --with-jpeg-dir --with-png-dir \
    && docker-php-ext-configure mysql --with-mysql=mysqlnd \
    && docker-php-ext-install iconv gd mcrypt mbstring mysql bcmath zip mysqli

# COPY ./php5.6/php.ini /usr/local/etc/php/conf.d/php.ini
