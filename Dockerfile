FROM postgres:16.2-alpine

ENV POSTGRES_DB ""
ENV POSTGRES_USER ""
ENV POSTGRES_PASSWORD ""

RUN apk add --no-cache postgresql-pg_cron && \
    cp /usr/lib/postgresql16/pg_cron.so /usr/local/lib/postgresql/ && \
    cp /usr/share/postgresql16/extension/* /usr/local/share/postgresql/extension

COPY setup-pg-cron.sh /docker-entrypoint-initdb.d/