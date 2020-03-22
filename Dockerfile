FROM ubuntu:18.04

RUN apt-get update && apt-get install openjdk-8-jdk -y && apt-get install maven -y && apt-get install zip -y && apt-get install wget -y && apt-get install git -y
RUN wget https://github.com/BroadleafCommerce/DemoSite/archive/broadleaf-6.0.6-GA.zip && unzip broadleaf-6.0.6-GA.zip && cd DemoSite-broadleaf-6.0.6-GA/ && mvn clean install && cd site && mvn spring-boot:run

EXPOSE 8443
EXPOSE 443
EXPOSE 80
EXPOSE 9001
EXPOSE 8983
