FROM php:7.3-apache
LABEL maintainer="r.wienicke@connexion.at"

RUN DEBIAN_FRONTEND=noninteractive \ 
	&& apt update -q && apt install -y zip libpng-dev libzip-dev libicu-dev libjpeg-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev libxpm-dev wget 

RUN docker-php-ext-configure gd \
  --with-png-dir=/usr/include/ \
  --with-jpeg-dir=/usr/include/ \
  -with-freetype-dir=/usr/include/
  
RUN a2enmod rewrite && docker-php-ext-install pdo_mysql gd zip intl

