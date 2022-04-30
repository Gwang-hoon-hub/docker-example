FROM openjdk:8
VOLUME ["/log.config.path_IS_UNDEFINED"]
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} docker-example-0.0.1.jar
ENTRYPOINT ["java","-jar","/docker-example-0.0.1.jar"]