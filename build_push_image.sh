#!/bin/bash

# Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1
docker build -t item-app:v1 .

# Melihat daftar image di lokal.
docker images

# Mengubah nama image agar sesuai dengan format GitHub Packages
docker tag item-app:v1 ghcr.io/amdmunif/item-app:v1

# Menggunakan variable untuk menampung password
export PAT=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

# Login ke GitHub Packages
echo $PAT | docker login ghcr.io --username amdmunif --password-stdin

# Mengunggah image ke GitHub Packages
docker push ghcr.io/amdmunif/item-app:v1
