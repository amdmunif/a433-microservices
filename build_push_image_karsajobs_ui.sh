#!/bin/bash

docker build -t ghcr.io/amdmunif/karsajobs-ui:latest .
echo $PAT | docker login ghcr.io --username amdmunif --password-stdin
# Push docker image to github
docker push ghcr.io/amdmunif/karsajobs-ui:latest