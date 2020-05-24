#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="adorszasz/udacity-nd9991-ml:ml-app"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml-apper --image=$dockerpath --env="DOMAIN=cluster" --env="POD_NAMESPACE=default"


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
pod="kubectl get pods | awk '/ml-app/{print $1}' | head -n 1"
kubectl port-forward $pod 8000:80
