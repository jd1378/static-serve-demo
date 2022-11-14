FROM javadmnjd/nginx-unit-alpine:unit1.28.0-alpine3.16

COPY . /var/www/

WORKDIR /var/www/

RUN set -ex \
    && chown -R www-data:www-data /var/www \
    && mv /var/www/.unit.config.json /docker-entrypoint.d/.unit.config.json

CMD ["unitd", "--no-daemon", "--control","unix:/var/run/control.unit.sock"]

EXPOSE 80
