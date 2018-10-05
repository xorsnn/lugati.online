#!/bin/bash

cd "${0%/*}"

SCRIPT_DIR=`pwd`

cd ${SCRIPT_DIR}

export VERSION=`cat VERSION`

docker build -t xors/lugati-frontend-dev .
docker tag xors/lugati-frontend-dev xors/lugati-frontend-dev:v${VERSION}

