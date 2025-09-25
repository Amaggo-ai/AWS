# Stage 1: Build the JAR using Maven (Amazon Corretto JDK 17 + Maven)
FROM public.ecr.aws/docker/library/maven:3.9.8-eclipse-temurin-17 AS builder
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run the Spring Boot app (Amazon Corretto JRE 17)
FROM public.ecr.aws/docker/library/eclipse-temurin:17-jre
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar

# Expose Spring Boot default port
EXPOSE 8080

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
