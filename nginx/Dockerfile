FROM nginx

EXPOSE 81

ADD ssl_cert.pem /etc/nginx/conf.d/ssl_cert.pem
ADD ssl_key.key /etc/nginx/conf.d/ssl_key.key

COPY uwsgi_params /etc/nginx/conf.d/uwsgi_params
COPY zosia /etc/nginx/conf.d/zosia.conf
