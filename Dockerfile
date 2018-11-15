 FROM ubuntu:16.04
 MAINTAINER Anvesh <vemulaanvesh9@gmail.com>
 RUN apt-get update
 RUN apt-get install -y apache2
 RUN apt-get update
 RUN apt-get install php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php -y
 RUN service apache2 restart
 RUN service apache2 start
 COPY index.php /var/www/html/
 RUN mkdir laravel 
 RUN cd laravel
 RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
 RUN composer global require "laravel/installer=~1.1"
 RUN composer create-project laravel/laravel sample
 RUN sample
 RUN composer install
 RUN php artisan serve
 EXPOSE port 8000
