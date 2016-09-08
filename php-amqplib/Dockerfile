## -*- docker-image-name: "rammler/php-amqplib" -*-

FROM 557447048791.dkr.ecr.eu-central-1.amazonaws.com/lshift.de/fedora:24
MAINTAINER https://lshift.de/

RUN dnf -y install git-core composer php-bcmath make; dnf clean all
RUN git clone https://github.com/php-amqplib/php-amqplib.git

WORKDIR /php-amqplib

RUN composer install

COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
