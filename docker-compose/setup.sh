#!/bin/sh

docker-compose exec upmotos composer install --no-interaction --prefer-dist --optimize-autoloader

docker-compose exec upmotos php artisan storage:link || true
docker-compose exec upmotos php artisan key:generate
