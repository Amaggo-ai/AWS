# Use Amazon Corretto 17 from AWS Public ECR
FROM public.ecr.aws/corretto/amazoncorretto:17

# Set working directory
WORKDIR /app

# Copy the built JAR
COPY target/*.jar app.jar

# Expose port 8080 (Spring Boot default)
EXPOSE 8080

# Run the app
ENTRYPOINT ["java", "-jar", "app.jar"]

