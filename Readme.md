# Spring Boot Inventory Management App - CI/CD Pipeline on AWS

This project demonstrates a fully automated **CI/CD pipeline** for a Spring Boot application using **AWS services**. The pipeline builds, 
packages, and deploys the application to **Amazon ECS** with Docker whenever code is pushed to GitHub.

---

## 🔹 Project Overview

- **Application**: Spring Boot Inventory Management
- **Programming Language**: Java 17 (Amazon Corretto)
- **Containerization**: Docker
- **Source Control**: GitHub
- **CI/CD Tools**: AWS CodePipeline, AWS CodeBuild
- **Container Registry**: Amazon ECR
- **Deployment Target**: Amazon ECS (Fargate)

---

## 🔹 Architecture

```text
GitHub (source code)
      │
      ▼
CodePipeline (orchestrator)
      │
      ▼
CodeBuild (build & dockerize)
      │
      ▼
ECR (store docker image)
      │
      ▼
ECS (run container on Fargate)

