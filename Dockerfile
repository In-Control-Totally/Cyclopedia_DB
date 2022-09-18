FROM mysql:latest

ARG sql_root=None
ARG env_type=None
ARG host=None
ARG domain=None

ENV MYSQL_ROOT_PASSWORD=$sql_root

COPY Cyclopedia.sql /docker-entrypoint-initdb.d

LABEL traefik.enable=true
LABEL traefik.http.routers.cyclopediadb.entrypoints=http
LABEL traefik.http.routers.cyclopediadb.rule=Host(`$host.$domain`)


EXPOSE 3306
