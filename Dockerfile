FROM php:7.0-apache
EXPOSE 80
RUN apt-get update
RUN apt-get install -y git vim
RUN git clone https://github.com/mdeller-ping/pf-authentication-api-sample.git
RUN cp -r pf-authentication-api-sample/dist/* /var/www/html
