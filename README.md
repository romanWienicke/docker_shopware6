# Docker Containers for running Shopware 6

## tltr
1. startup using docker-compose up
2. get latest shopware installation zip file and extract into www subdirectory
3. shopware is runnung on localhost:80 http://localhost

## container info
### sw6-webserver
custom container building on php:7.4-apache image with needed php extensions installed. 
the www directory is for development
### sw6-database
maria-db database 
root password: shopware
### sw6-database-phpmyadmin
phpmyadmin image for database editing running on localhost:8000
