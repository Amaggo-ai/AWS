#  CI/CD Pipeline: Spring Boot on AWS ECS (Fargate)

--------------------------------------------------------------------
##  Objective
To implement a CI/CD pipeline using AWS services for automating the 
deployment of a **Spring Boot application** on **Amazon ECS (Fargate)** 
with Docker, integrating **CodePipeline, CodeBuild, and ECR** for seamless 
updates.

--------------------------------------------------------------------

##  Tasks

### **Task 1: Fork & ECR Setup**
- Forked the Spring Boot GitHub repository.
- Created an **Amazon ECR** repository `springboot-app` to store Docker 
images.

### **Task 2: Build Configuration**
- Added `Dockerfile` and `buildspec.yml` in the GitHub repo.
- Updated `buildspec.yml` with ECR image URI.

### **Task 3: CodeBuild Project**
- Created a **CodeBuild** project pulling code from GitHub.
- Configured `buildspec.yml` for:
  - Building Spring Boot JAR with Maven.
  - Building Docker image.
  - Pushing image to ECR.
  - Creating `imagedefinitions.json`.

### **Task 4: ECS Cluster & Service**
- Created an **ECS cluster** using **Fargate launch type**.
- Defined **Task Definition** with container `springboot-app`.
- Configured ECS **Service** with port `8080`.

### **Task 5: Deploy Application**
- Deployed initial Docker image to ECS.
- Verified application is running on ECS Fargate.

### **Task 6: CodePipeline Integration**
- Configured **CodePipeline** to trigger on GitHub changes.
- Integrated **CodeBuild** and **ECS** for automated deployments.

### **Task 7: Testing & Monitoring**
- Pushed changes to GitHub → pipeline automatically built & deployed 
Docker image.
- Verified ECS service updates.
- Monitored logs via **CloudWatch** and pipeline executions via 
**CodePipeline console**.

----------------------------------------------------------------------

## ️ Tech Stack
- Spring Boot (Java)
- Docker
- AWS ECR
- AWS ECS (Fargate)
- AWS CodeBuild
- AWS CodePipeline
- Maven

----------------------------------------------------------------------

##  CI/CD Pipeline Flow
1. **Source**: GitHub → CodePipeline triggers on push.
2. **Build**: CodeBuild compiles Spring Boot JAR, builds Docker image, 
pushes to ECR.
3. **Deploy**: ECS service pulls latest image from ECR and updates running 
task.
4. **Run**: Application runs in ECS Fargate.

-----------------------------------------------------------------------

## Key Learnings
- Containerizing a Spring Boot app with Docker.
- Automating CI/CD with **AWS CodePipeline**.
- Deploying microservices to **ECS Fargate**.
- Managing container images in **Amazon ECR**.

----------------------------------------------------------------------


