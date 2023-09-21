#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
echo "Pulling the Docker image from Docker Hub"
echo "$DOCKER_REGISTRY_PASSWORD" | docker login -u "$DOCKER_REGISTRY_USERNAME" --password-stdin "$DOCKER_REGISTRY_URL"
# docker build -t "$DOCKER_REGISTRY_URL/$DOCKER_REGISTRY_PROFILE_NAME/simple-python-flask-app:latest" .
docker pull "mogomotsi/simple-python-flask-app:latest"  

# Run the Docker image as a container
echo "Starting the Docker container"
docker run -p "mogomotsi/simple-python-flask-app"
