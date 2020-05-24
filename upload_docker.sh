#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
localtag="ml-app"
dockerpath="adorszasz/ml-app"

# Step 2:  
# Authenticate & tag
docker login --username=adorszasz --email=ador.szasz@gmail.com
docker tag $localtag $dockerpath:firsttry
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath
