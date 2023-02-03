FROM crater-php

# Set working directory
WORKDIR /app
COPY . /app

USER root
# RUN chmod -R 777 /app

# Install dependencies
RUN composer install --no-dev
RUN php artisan storage:link || true

CMD php artisan serve --host=0.0.0.0 --port $PORT

EXPOSE $PORT
