FROM ubuntu:trusty
MAINTAINER Jon Lancelle <bassoman@gmail.com>

RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install curl -y
RUN apt-get install wget -y

#RUN apt-get install openjdk-8-jdk

EXPOSE 8080
