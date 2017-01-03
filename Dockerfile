FROM php:5.6-apache
MAINTAINER adolphlwq kenan3015@gmail.com

ENV CCA_URL https://github.com/sebgiroux/Cassandra-Cluster-Admin.git
RUN apt-get update && \
    apt-get install -y --no-install-recommends git vim && \
    git clone --depth 1 $CCA_URL /var/www/html && \
    chown www-data:www-data -R cca && \
    apt-get remove -y git && \
    apt-get clean
