#---------------------------------------------------------------------------
# Dockefile to build Docker Image of Apache WebServer running on Alpine
#
# Made by Stefan Tafara  21-June-2022
#---------------------------------------------------------------------------

#FROM alpine:3.16.0
#FROM ubuntu:kinetic-20220602
FROM httpd:2.4.54

#for Alpine
#RUN apk update
#RUN apk add apache2
#RUN apk add openrc --no-cache

#for Ubuntu
RUN apt-get update

RUN echo CURRENT DIRECTORY
RUN pwd && ls -a
RUN echo CURRENT DIRECTORY after cd var
RUN cd /var/
RUN pwd && ls -a

COPY  index.html  /usr/local/apache2/htdocs/

#RUN echo 'ServerName localhost' >> /etc/apache2/httpd.conf

#EXPOSE 80
#CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
