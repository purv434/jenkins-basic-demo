#FROM maven:3.8.2-openjdk-17 AS build
#COPY pom.xml .
#COPY src ./src
#RUN mvn clean install
#ENTRYPOINT ["java","-jar","./target/jenkins-demo.jar"]

FROM openjdk:8
ADD target/*.jar app.jar
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE 8182