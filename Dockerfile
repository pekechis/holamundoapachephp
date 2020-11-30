FROM php:7.2-apache


RUN apt update
RUN apt install -y nano

COPY index.php  /var/www/html/index.php

COPY info.php /var/www/html/info.php

WORKDIR /var/www/html

RUN chown www-data:www-data *.php
