#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath="duongaity/udacity-flask-app"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username duongaity
docker tag flask-app "${dockerpath}:v1.0.1"

# Step 3:
# Push image to a docker repository
docker push "${dockerpath}:v1.0.1"
