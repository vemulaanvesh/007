FROM php:7-1apache
COPY scr/ /var/www/html
EXPOSE 80
CMD ("echo", hi mama)
