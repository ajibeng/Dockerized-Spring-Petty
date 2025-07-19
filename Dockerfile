# Our base image
FROM maven:3.9.11-eclipse-temurin-17-alpine

# Lets create a working directory

WORKDIR /app

COPY . .

RUN apk add curl wget unzip

RUN mvn clean install

EXPOSE 8080

ENTRYPOINT java -jar target/*.jar
