#!/bin/bash

# Build the Docker image
docker build -t item-app:v1 .

# List local images
docker images

# Rename the image for GitHub Packages
docker tag item-app:v1 ghcr.io/mochamad-rizky/item-app:v1

# Log in to GitHub Packages
echo $CR_PAT | docker login ghcr.io -u Mochamad-Rizky --password-stdin

# Push the image to GitHub Packages
docker push ghcr.io/mochamad-rizky/item-app:v1