FROM ubuntu:21.10
LABEL maintainer="lucasV2"

RUN apt-get update && apt-get install -y apache2 

COPY monsite/* /var/www/html/ 

WORKDIR /var/www/html 

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

CMD ["apachectl", "-D", "FOREGROUND"] 

EXPOSE 8026 
