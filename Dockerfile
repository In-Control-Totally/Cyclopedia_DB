FROM mysql:latest

ARG sql_root=None

ENV MYSQL_ROOT_PASSWORD=$sql_root

COPY Cyclopedia.sql /docker-entrypoint-initdb.d

EXPOSE 3306
