#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=sureshgtechno/proj4ml

export DOCKER_ID_USER="sureshgtechno"
docker login
localdockerpath=proj4ml
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag $localdockerpath:latest $dockerpath:latest
# Step 3:
# Push image to a docker repository
docker push $dockerpath

