#!/bin/bash

# AppSRE team CD

set -exv

CURRENT_DIR=$(dirname $0)

BASE_IMG="external-dns"
QUAY_IMAGE="quay.io/app-sre/${BASE_IMG}"
IMG="${BASE_IMG}:latest"

GIT_HASH=`git rev-parse --short=7 HEAD`

# build the image
docker build -f Dockerfile.ci -t ${IMG} .
