#FROM gcr.io/distroless/java17-debian11
FROM amazoncorretto:17.0.7-al2023-headless
ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]