#!/bin/bash

# Build docker image to GitHub Package dengan nama order-service
docker build -t ghcr.io/amdmunif/order-service:latest .

# Menggunakan variable untuk menampung password
export PAT=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

# Menentukan username dan password untuk masuk ke GitHub Package
echo $PAT | docker login ghcr.io --username amdmunif --password-stdin

# Menentukan username dan password untuk masuk ke GitHub Package dengan nama order-service
docker push ghcr.io/amdmunif/order-service:latest