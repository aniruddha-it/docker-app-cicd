## 📝 Django Todo App – CI/CD with Jenkins & Docker

### 📖 Overview

This project is a Dockerized Django Todo Application automated using a Jenkins CI/CD pipeline.
The pipeline clones the GitHub repository, builds a Docker image, and runs the container — ensuring a clean, repeatable deployment process.

### 🚀 Features

- Django-based Todo web application
- Containerized using Docker
- Automated build and deploy with Jenkins
- Configurable Jenkinsfile for CI/CD
- Modular, easy-to-extend structure

### 🏗️ Tech Stack

1. Django (Python)
2. Jenkins
3. Docker
4. Git & GitHub

### 🐳 Docker Setup

```bash
Build the Docker image:
```

```bash
docker build -t django-todo:01 .
```

Run the container:

```bash
docker run -d -p 8001:8001 django-todo:01
```

Then open your browser at [http://localhost:8001](http://localhost:8001/)
.

### ⚡ Jenkins CI/CD Pipeline

Stages in Jenkinsfile:

1. Checkout – Pulls the latest code from GitHub.
2. Build Docker Image – Builds the Docker image for the Django app.
3. Run Container – Runs the Docker container automatically after build.
4. User Input - To stop and remove conatiner and image

The Jenkins pipeline automatically executes each stage on new commits or manual build triggers.

### 📦 Requirements

-  Python latest

- Docker installed and running

- Jenkins configured with Docker permissions

- Git installed
