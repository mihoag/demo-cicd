FROM openjdk:21-jdk-slim AS build
WORKDIR /app
ARG JAR_FILE=target/data-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} .
EXPOSE 5000
# Run the application
ENTRYPOINT ["java", "-jar", "data-0.0.1-SNAPSHOT.jar"]