#!/bin/bash

docker build -t ghcr.io/amdmunif/karsajobs:latest .
export PAT=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
echo $PAT | docker login ghcr.io --username amdmunif --password-stdin
# Push docker image to github
docker push ghcr.io/amdmunif/karsajobs:latest