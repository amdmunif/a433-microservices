#!/bin/bash

# Build docker image to GitHub Package dengan nama shipping-service
docker build -t ghcr.io/amdmunif/shipping-service:latest .

# Menentukan username dan password untuk masuk ke GitHub Package 
echo $PAT | docker login ghcr.io --username amdmunif --password-stdin

# Menentukan username dan password untuk masuk ke GitHub Package dengan nama shipping-service
docker push ghcr.io/amdmunif/shipping-service:latest