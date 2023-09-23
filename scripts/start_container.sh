#!/bin/bash
set -e

# Pull the Docker image from Docker Hub
echo "Pulling the Docker image from Docker Hub"
sudo docker pull "mogomotsi/simple-python-flask-app:latest"  

# Run the Docker image as a container
echo "Starting the Docker container"
sudo docker run -d -p 5000:5000 "mogomotsi/simple-python-flask-app"
