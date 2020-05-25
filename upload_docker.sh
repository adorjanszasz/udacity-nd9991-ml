#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
localtag="ml-app"
dockerpath="adorszasz/udacity-nd9991-ml"
tagname="ml-app-v1"

# Step 2:  
# Authenticate & tag
docker login --username=adorszasz --email=ador.szasz@gmail.com docker.io
docker tag $localtag $dockerpath:$tagname
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath:$tagname
