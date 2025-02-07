# CI/CD Pipeline with Docker

This project demonstrates a **CI/CD pipeline** using **GitHub Actions**, **Docker**, and **Docker Hub**. It automates the process of building, testing, and deploying a Dockerized application on every push to the `main` branch.

## Features
- **CI/CD pipeline** with GitHub Actions
- **Docker** for containerization
- **Docker Hub** for storing Docker images
- Automated deployment with each push to `main`

## Technologies Used
- **Docker**
- **GitHub Actions**
- **Docker Hub**

## How It Works
1. On each push to `main`, GitHub Actions triggers the pipeline.
2. The pipeline builds a Docker image.
3. The image is pushed to Docker Hub using credentials stored in GitHub Secrets.

## Setup Instructions

### Prerequisites
- Docker Hub account
- GitHub repository
- GitHub Secrets for `DOCKER_USERNAME` and `DOCKER_PASSWORD`

### Steps
1. **Clone the repository**:

   ```bash
   git clone https://github.com/<your-username>/ci-cd-pipeline.git
   cd ci-cd-pipeline

2. **Build Docker image**:
   ```bash
   docker build -t <your-docker-username>/my-app .
   
3. **Push Docker image to Docker Hub**:
   ```bash
   docker push <your-docker-username>/my-app

   4. **Set GitHub Secrets for `DOCKER_USERNAME` and `DOCKER_PASSWORD`**:
   - Go to your GitHub repository → Settings → Secrets
   - Add a new secret `DOCKER_USERNAME` with your Docker Hub username
   - Add a new secret `DOCKER_PASSWORD` with your Docker Hub password

5. **GitHub Actions will automatically run on each push to `main`**.

## Running the App

Once the image is on Docker Hub, pull and run it:

1. **Pull the image from Docker Hub**:
   ```bash
   docker pull <your-docker-username>/my-app
   
2. **Run the Docker container**:
   ```bash
   docker run -p 3000:3000 <your-docker-username>/my-app

