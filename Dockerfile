# FROM nginx:alpine
# # RUN apt-get update && apt-get upgrade -y

# RUN rm /usr/share/nginx/html/index.html

# COPY index.html /usr/share/nginx/html
# EXPOSE 80

FROM ubuntu
RUN apt-get update
RUN apt-get install nginx -y
COPY index.html /var/www/html/
EXPOSE 80
CMD ["nginx","-g","daemon off;"]