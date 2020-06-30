#!/usr/bin/env bash

declare -r CURR_DIR=$(cd `dirname $0`;pwd)
cd ${CURR_DIR:-.}/..

if [[ "$1" == "rebuild" ]]; then
    echo "docker-compose up --build --force-recreate -d"
    docker-compose up --build --force-recreate -d
else
    echo "docker-compose up -d"
    docker-compose up -d
fi
