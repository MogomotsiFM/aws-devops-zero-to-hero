#!/bin/bash
set -e

# Stop the running container (if any)
echo "Stoping all running containers. There is only one anyways."
docker stop `docker ps -q`
# docker stop $(docker ps -q -f "name=$1")
sleep 30
