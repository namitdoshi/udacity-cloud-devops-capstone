# hadolint ignore=DL4000 

FROM nginx:alpine
# RUN apt-get update && apt-get upgrade -y
COPY index.html /var/www/html/
EXPOSE 80