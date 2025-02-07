CI/CD Pipeline with Docker

This project demonstrates the process of setting up a CI/CD pipeline using GitHub Actions, Docker, and Docker Hub. The pipeline is designed to automatically build, test, and deploy a Dockerized application every time a change is pushed to the main branch of the repository.
Features

CI/CD Pipeline using GitHub Actions
Docker for containerization of the application
Docker Hub for storing Docker images
Automated build and deployment with every commit to the main branch

Technologies Used
Docker
GitHub Actions
Docker Hub
Node.js

How It Works
Docker Build: Every time a change is pushed to the main branch, GitHub Actions triggers the pipeline.
Docker Image Creation: The pipeline builds a Docker image for the application.
Push to Docker Hub: The built Docker image is pushed to Docker Hub using the credentials stored in GitHub Secrets.
Deployment: The image is ready for deployment, allowing you to easily deploy it to a server or cloud platform.

Setup Instructions
Prerequisites
A Docker Hub account for storing the Docker image.
A GitHub repository with the source code of the application.
GitHub Secrets set up for DOCKER_USERNAME and DOCKER_PASSWORD for authentication.

Steps
Clone the repository:
git clone https://github.com/<your-username>/ci-cd-pipeline.git

cd ci-cd-pipeline
Build the Docker image locally:
docker build -t <your-docker-username>/my-app .

Push the Docker image to Docker Hub:
docker push <your-docker-username>/my-app

Set up GitHub Actions:
Go to your repository’s Settings > Secrets and Variables > Actions.
Add the following secrets:
DOCKER_USERNAME: Your Docker Hub username.
DOCKER_PASSWORD: Your Docker Hub password.

GitHub Actions Workflow:
The .github/workflows/ci-cd-pipeline.yml file contains the GitHub Actions configuration for the CI/CD pipeline.
Every time you push to the main branch, GitHub Actions will trigger the pipeline to build and push the Docker image.

Running the Application
Once the Docker image is pushed to Docker Hub, you can pull and run the image on any machine:
docker pull <your-docker-username>/my-app
docker run -p 3000:3000 <your-docker-username>/my-app
This will run the application on port 3000 (or change the port number as needed).
