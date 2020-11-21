#!/bin/bash

docker run \
  -it --rm --privileged \
  --net host \
  -v /root/DOCKER/sessions:/tmp/tmate/sessions \
  robart-tmate-websocket:latest "$@"

