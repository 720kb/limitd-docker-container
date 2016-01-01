#!/bin/bash

docker run \
  --name limitd \
  -d \
  -h limitd \
  -p 127.0.0.1:9001:9001 \
  720kb/limitd
