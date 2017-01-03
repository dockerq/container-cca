FROM php:5.6-apache
MAINTAINER adolphlwq kenan3015@gmail.com

ENV CCA_URL https://github.com/sebgiroux/Cassandra-Cluster-Admin.git
RUN apt-get update && \
    apt-get install -y --no-install-recommends git && \
    git clone $CCA_URL /var/www/cca && \
    apt-get remove git && \
    apt-get clean
