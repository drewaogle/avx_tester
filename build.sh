#!/bin/bash
IMAGE="drewaogle/avx_tester"
VER=2
make
docker build -t drewaogle/avx_tester -f docker/Dockerfile .
docker tag $IMAGE ${IMAGE}:latest
docker tag $IMAGE ${IMAGE}:${VER}
docker push $IMAGE:latest
docker push ${IMAGE}:${VER}
