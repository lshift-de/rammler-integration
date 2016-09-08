## -*- docker-image-name: "lshift.de/rabbitmq" -*-

FROM 557447048791.dkr.ecr.eu-central-1.amazonaws.com/lshift.de/fedora:24

RUN dnf -y install rabbitmq-server; dnf clean all

EXPOSE 4369 5671 5672 25672 15671 15672
VOLUME /var/lib/rabbitmq
RUN ln -sf /var/lib/rabbitmq/.erlang.cookie /root/
COPY rabbitmq.config enabled_plugins *.pem /etc/rabbitmq/
CMD runuser -u rabbitmq -- rabbitmq-server
