FROM    alpine:3.18

RUN     apk update && apk upgrade && apk add openssl nginx

RUN		rm -f /etc/nginx/http.d/default.conf

RUN     cd /etc/ssl/certs && openssl req -x509 -days 365 -sha256 -nodes -newkey rsa:2048 -keyout chmartin.42.fr.key -out chmartin.42.fr.csr -subj "/CN=chmartin.42.fr"

COPY    ./requirements/nginx/conf/nginx.conf /etc/nginx/http.d/nginx.conf

COPY    ./requirements/nginx/conf/index.html /etc

CMD     nginx -g "daemon off;"

#CMD sleep 5000