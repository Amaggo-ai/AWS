# Use Eclipse Temurin 17 JRE from AWS Public ECR (no DockerHub rate limit)
FROM public.ecr.aws/docker/library/eclipse-temurin:17-jre

# Set working directory
WORKDIR /app

# Copy the built JAR
COPY target/*.jar app.jar

# Expose port 8080 (Spring Boot default)
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]

