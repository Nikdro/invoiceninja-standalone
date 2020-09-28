FROM webdevops/php-apache:latest
MAINTAINER Niklas Droste <docker-images@ndroste.de>

WORKDIR /app
RUN chown www-data:www-data -R /app
USER www-data

RUN rm -rf *
RUN wget -O invoiceninja.zip https://download.invoiceninja.com
RUN unzip invoiceninja.zip && mv ninja/* . && rm -r ninja

ENV WEB_DOCUMENT_ROOT=/app/public
