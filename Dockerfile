FROM openjdk:8-jdk-alpine

LABEL maintainer="bhargava.kotharu@gmail.com"

VOLUME /tmp

EXPOSE 8080

ARG JAR_FILE=target/spring-boot-docker-example-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} spring-boot-docker-example.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-boot-docker-example.jar"]
