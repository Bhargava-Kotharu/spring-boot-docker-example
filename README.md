# Spring Boot Docker Example #

## Spring boot application ##

We have created a simple spring boot applicaiton and exposed an endpoint.

## Building Docker Image ##

Open terminal in root folder of the application and run command - docker build -t spring-boot-docker-example .

Output should look like below:

bkotharu$ docker build -t spring-boot-docker-example .
Sending build context to Docker daemon  16.36MB
Step 1/7 : FROM openjdk:8-jdk-alpine
8-jdk-alpine: Pulling from library/openjdk
4fe2ade4980c: Pull complete 
6fc58a8d4ae4: Pull complete 
fe815adf554b: Pull complete 
Digest: sha256:a2d7b02891b158d01523e26ad069d40d5eb2c14d6943cf4df969b097acaa77d3
Status: Downloaded newer image for openjdk:8-jdk-alpine
 ---> 54ae553cb104
Step 2/7 : LABEL maintainer="bhargava.kotharu@gmail.com"
 ---> Running in d26b27da4f9e
Removing intermediate container d26b27da4f9e
 ---> 86a03cfc3ac9
Step 3/7 : VOLUME /tmp
 ---> Running in 85459d8b5c27
Removing intermediate container 85459d8b5c27
 ---> 0d68604eb580
Step 4/7 : EXPOSE 8080
 ---> Running in e83cdf59d946
Removing intermediate container e83cdf59d946
 ---> b886e051e478
Step 5/7 : ARG JAR_FILE=target/spring-boot-docker-example-0.0.1-SNAPSHOT.jar
 ---> Running in b8e6810bdd5a
Removing intermediate container b8e6810bdd5a
 ---> 8574b974a50a
Step 6/7 : ADD ${JAR_FILE} spring-boot-docker-example.jar
 ---> 21c5586a7296
Step 7/7 : ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/spring-boot-docker-example.jar"]
 ---> Running in 134f96189f6d
Removing intermediate container 134f96189f6d
 ---> ac206c88fe7a
Successfully built ac206c88fe7a
Successfully tagged spring-boot-docker-example:latest


## Check Docker Image ##

To see the newly created docker image, run command - docker image ls 

## Running Docker Image ##

### Running in the same window ###

docker run -p 5000:8080 spring-boot-docker-example

### Running as a background process ###

docker run -d -p 8080:8080 spring-boot-docker-example


