# Use the official OpenJDK image from the Docker Hub
FROM openjdk:21-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file from the target directory to the container
ARG JAR_FILE=target/data-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar

# Expose the port the application runs on
EXPOSE 5000

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]