## -*- docker-image-name: "lshift.de/rammler-bunny" -*-

FROM 557447048791.dkr.ecr.eu-central-1.amazonaws.com/lshift.de/fedora:24
MAINTAINER https://lshift.de/

RUN dnf -y install git-core rubygem-bundler ruby-devel make gcc redhat-rpm-config rabbitmq-server; dnf clean all
RUN git clone https://github.com/ruby-amqp/bunny.git
WORKDIR /bunny

RUN git checkout 2.5.1
COPY *.patch /bunny/
RUN git apply *.patch
RUN bundle install
VOLUME /var/lib/rabbitmq /output
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENV RABBITMQCTL=rabbitmqctl CI_REPORTS=/output

ENTRYPOINT ["/docker-entrypoint.sh"]
