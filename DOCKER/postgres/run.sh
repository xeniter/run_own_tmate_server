#!/bin/bash

docker run \
  -it --rm --privileged \
  --net host \
  robart-postgres:latest "$@"
