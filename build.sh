#!/bin/sh

read -p "Enter tag name: " TAGNAME

BUILDER_NAME=temp_builder_$(date +%s)
docker buildx create --name $BUILDER_NAME --use

docker buildx build \
  --platform linux/amd64,linux/arm64 \
  -t znagyy/docs:$TAGNAME \
  -t znagyy/docs:latest \
  --push .

docker buildx rm $BUILDER_NAME
