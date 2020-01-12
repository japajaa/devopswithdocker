FROM openjdk:8 as build-stage

ADD spring-example-project /spring-example-project
WORKDIR /spring-example-project

RUN ./mvnw package 

FROM openjdk:8

COPY --from=build-stage /spring-example-project/target/ /java-build

WORKDIR /java-build

RUN adduser --disabled-login app && \
chown -R app ./

USER app 

CMD java -jar ./docker-example-1.1.3.jar

EXPOSE 8080
