#This is a sample Image
FROM ubuntu
MAINTAINER zishhai@gmail.com

RUN apt-get update

FROM openjdk:8
ADD target/my-maven-docker-project.jar my-maven-docker-project.jar
ENTRYPOINT ["java", "-jar","my-maven-docker-project.jar"]
EXPOSE 8080
