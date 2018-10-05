#!/bin/bash

cd "${0%/*}"

SCRIPT_DIR=`pwd`

cd ${SCRIPT_DIR}

export VERSION=`cat VERSION`

docker build -t xors/lugati-backend-nginx .
docker tag xors/lugati-backend-nginx xors/lugati-backend-nginx:v${VERSION}

