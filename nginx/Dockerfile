FROM nginx

RUN mkdir /etc/nginx/sites-enabled
COPY zosia /etc/nginx/sites-available/zosia
RUN ln -s /etc/nginx/sites-available/zosia \\
          /etc/nginx/sites-enabled/
RUN service nginx restart
