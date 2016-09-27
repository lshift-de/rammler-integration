## -*- docker-image-name: "lshift.de/postgres" -*-

FROM 557447048791.dkr.ecr.eu-central-1.amazonaws.com/lshift.de/fedora:24

RUN dnf -y install postgresql-server findutils; dnf clean all
EXPOSE 5432

USER postgres
RUN initdb /var/lib/pgsql/data
COPY pg_hba.conf /var/lib/pgsql/data
COPY postgresql.conf /var/lib/pgsql/data

USER root
RUN chown -R postgres:postgres /var/lib/pgsql/data

CMD runuser -u postgres -- postgres -D /var/lib/pgsql/data
