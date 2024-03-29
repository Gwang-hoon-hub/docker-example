FROM openjdk:8
RUN apt-get update && \
    apt-get install -yq tzdata && \
    ln -fs /usr/share/zoneinfo/Asia/Seoul /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata
VOLUME ["/log.config.path_IS_UNDEFINED"]
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} docker-example-0.0.1.jar
ENTRYPOINT ["java","-jar","/docker-example-0.0.1.jar"]