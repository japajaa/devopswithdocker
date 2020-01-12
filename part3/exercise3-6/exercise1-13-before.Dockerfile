FROM ubuntu:16.04
FROM openjdk:8

ADD spring-example-project /spring-example-project
WORKDIR /spring-example-project

RUN ./mvnw package
CMD java -jar ./target/docker-example-1.1.3.jar

EXPOSE 8080
