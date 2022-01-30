FROM nginx:1.21.5
WORKDIR /usr/share/nginx/html
COPY www /usr/share/nginx/html/
