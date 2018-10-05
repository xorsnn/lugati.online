#!/bin/bash

cd "${0%/*}"

SCRIPT_DIR=`pwd`

cd ${SCRIPT_DIR}

export VERSION=`cat VERSION`

docker build -t xors/lugati-frontend-builder .
docker tag xors/lugati-frontend-builder xors/lugati-frontend-builder:v${VERSION}

