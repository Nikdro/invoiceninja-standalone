FROM webdevops/php-apache:latest
MAINTAINER Niklas Droste <docker-images@ndroste.de>

RUN a2enmod substitute

WORKDIR /app
RUN chown www-data:www-data -R /app
USER www-data

RUN rm -rf *
RUN wget -O invoiceninja.zip https://download.invoiceninja.com
RUN unzip invoiceninja.zip && mv ninja/* . && rm -r ninja

ENV WEB_DOCUMENT_ROOT=/app/public
ENV APP_DEBUG=0
