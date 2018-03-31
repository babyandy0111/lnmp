FROM debian:stretch-slim

ARG PHP_VERSION=5.6.35

COPY lnmp-wsl-php-builder.sh /lnmp-wsl-php-builder.sh

RUN sed -i "s#sudo##g" /lnmp-wsl-php-builder.sh \
      && sh /lnmp-wsl-php-builder.sh ${PHP_VERSION}
