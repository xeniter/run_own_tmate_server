#!/bin/bash

docker run \
  -it --rm --privileged \
  -v /root/DOCKER/keys:/keys \
  -v /root/DOCKER/sessions:/tmp/tmate/sessions \
  --net host \
  robart-tmate-server:latest "$@"
