FROM php:latest

WORKDIR /app

COPY . /app

RUN apt-get update && \
    apt-get install -y git && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    composer install --no-dev

EXPOSE 80

ENV APP_ENV production

CMD ["php", "-S", "0.0.0.0:80"]