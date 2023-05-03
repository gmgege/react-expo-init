#!/bin/bash

IP=$(ifconfig en0 | grep 'inet ' | awk '{print $2}')
export REACT_NATIVE_PACKAGER_HOSTNAME=$IP

docker-compose up --build
