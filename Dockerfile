FROM openjdk:20-slim as build
ARG JAR_FILE
COPY target/${JAR_FILE} eureka-server.jar
EXPOSE 8761
ENTRYPOINT ["java", "-jar", "/eureka-server.jar"]

