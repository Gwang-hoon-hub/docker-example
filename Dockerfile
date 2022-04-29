FROM openjdk:8-jdk-alpine
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} docker-example-0.0.1.jar
ENTRYPOINT ["java","-jar","/app.jar"]