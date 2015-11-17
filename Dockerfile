FROM ubuntu:15.10
MAINTAINER Jon Lancelle <bassoman@gmail.com>

RUN apt-get update && apt-get install -y \
	curl \
	wget

RUN wget --no-cookies --no-check-certificate --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.tar.gz" -O /opt/jdk-8-linux-x64.tar.gz
RUN cd /opt && tar -xzvf jdk-8-linux-x64.tar.gz

ENV PATH /opt/jdk1.8.0_65/bin:$PATH

#COPY entrypoint.sh /usr/local/bin/

#EXPOSE 8080

#ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
