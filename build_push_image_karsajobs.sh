#!/bin/bash

docker build -t ghcr.io/amdmunif/karsajobs:latest .
export PAT=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
echo $PAT | docker login ghcr.io --username amdmunif --password-stdin
docker push ghcr.io/amdmunif/karsajobs:latest