FROM php:7.4-apache
LABEL maintainer="r.wienicke@connexion.at"


RUN DEBIAN_FRONTEND=noninteractive \ 
	&& apt update -q && apt install -y zip libpng-dev libzip-dev libicu-dev libjpeg-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev libxpm-dev wget

RUN docker-php-ext-configure gd \
  --with-jpeg \
  --with-freetype
  
RUN docker-php-ext-install pdo_mysql gd zip intl

