#!/bin/bash

cd "${0%/*}"

SCRIPT_DIR=`pwd`

cd ${SCRIPT_DIR}

export VERSION=`cat VERSION`

docker build -t xors/lugati-sshd .
docker tag xors/lugati-sshd xors/lugati-sshd:v${VERSION}

