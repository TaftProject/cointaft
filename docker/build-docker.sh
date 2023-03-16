#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-cointaft/cointaftd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/cointaftd docker/bin/
cp $BUILD_DIR/src/cointaft-cli docker/bin/
cp $BUILD_DIR/src/cointaft-tx docker/bin/
strip docker/bin/cointaftd
strip docker/bin/cointaft-cli
strip docker/bin/cointaft-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
