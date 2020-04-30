FROM nginx:alpine
# RUN apt-get update && apt-get upgrade -y

RUN rm /usr/share/nginx/html/index.html

COPY index.html /usr/share/nginx/html
EXPOSE 80