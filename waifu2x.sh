#!/bin/bash
docker run -it --rm --runtime=nvidia \
  -v ${PWD}/images:/workspace/waifu2x/images \
  swkim773/waifu2x $@