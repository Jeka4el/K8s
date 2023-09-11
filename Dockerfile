FROM ubuntu:20.04
RUN apt-get -y update && apt-get install -y nginx
#RUN apt-get install nginx
COPY index.html /var/www/html 
RUN chmod 704 /var/www/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

