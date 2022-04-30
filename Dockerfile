FROM openjdk:8
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} docker-example-0.0.1.jar
ENTRYPOINT ["java","-jar","/docker-example-0.0.1.jar"]
VOLUME ["/home"]
