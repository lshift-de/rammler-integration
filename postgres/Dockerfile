## -*- docker-image-name: "lshift.de/postgres" -*-

FROM 557447048791.dkr.ecr.eu-central-1.amazonaws.com/lshift.de/fedora:24

RUN dnf -y install postgresql-server findutils; dnf clean all
EXPOSE 5432

USER postgres
run initdb /var/lib/pgsql/data

CMD postgres -D /var/lib/pgsql/data
