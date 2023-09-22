#!/bin/bash
set -e

# Stop the running container (if any)
echo "Stoping all running containers. There is only one anyways."
containerId = `docker ps | awk -F " " '{print $1}'`
if [ ! $containerId == "" ]; then
    docker stop $containerId
fi
# docker stop $(docker ps -q -f "name=$1")
sleep 30
