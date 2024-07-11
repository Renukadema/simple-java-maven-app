# Use a base image with Java already installed
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

RUN apt-get update && \
    apt-get install -y curl && \
    rm -rf /var/lib/apt/lists/*
# Copy the compiled Java application JAR file into the container at /app
COPY ./target/my-app-1.0-SNAPSHOT.jar /app/my-app-1.0-SNAPSHOT.jar

COPY . .
# Command to run your Java application
CMD ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]

