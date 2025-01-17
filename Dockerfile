# Base image for Java
FROM openjdk:17-jdk-alpine

# Set the working path inside the Docker container
WORKDIR /app

# Copy over the project jar file.
COPY app.jar app.jar

# Expose the port of the Docker Container to allow communication.
EXPOSE 8080

# Run the Java command to start the web app.
RUN ["java", "-jar", "jar.app"]
