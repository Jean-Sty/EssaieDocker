FROM php:latest
WORKDIR /app
COPY . /app
RUN composer install --no-dev
EXPOSE 80

ENV APP_ENV production

CMD ["php", "-S", "0.0.0.0:80"]
