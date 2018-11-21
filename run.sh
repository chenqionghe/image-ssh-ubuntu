#!/usr/bin/env bash

docker rm -f ubuntu_ssh
docker run --name ubuntu_ssh -p 2222:22 -d chenqionghe/ubuntu
