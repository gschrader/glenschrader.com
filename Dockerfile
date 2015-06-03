FROM nginx
COPY assets /usr/share/nginx/html/assets
COPY index.html /usr/share/nginx/html/
COPY keybase.txt /usr/share/nginx/html/
