#!/bin/bash

docker run \
  -it --rm --privileged \
  --net host \
  robart-tmate-master:latest "$@"

