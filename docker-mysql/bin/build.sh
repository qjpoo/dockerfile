#!/usr/bin/env bash

set -e

declare -r CURR_DIR=$(cd `dirname $0`;pwd)
IMG_NAME=mysql:1.0-alpine
DF_PATH=${CURR_DIR:-.}/../Dockerfile

if [[ "$1" ]]; then
    DF_PATH=${DF_PATH}-custom-mirror
fi

img=$(docker images | grep ${IMG_NAME} | awk '{print $3}')
if [ $img ]; then
    docker rmi -f $img
fi

docker build -f ${DF_PATH} -t ${IMG_NAME} .
