FROM    alpine:3.18

RUN     apk update && apk upgrade && apk install mariadb mariadb-client mariadb-server-utils

COPY    ./requirements/mariadb/conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

