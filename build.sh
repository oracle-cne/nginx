#! /bin/bash
# Copyright (c) 2025 Oracle and/or its affiliates.
set -e
set -x

VERSION="$1"
STREAM="$2"
podman build --squash-all --build-arg=VERSION="$VERSION" --build-arg=STREAM="$STREAM" -t "container-registry.oracle.com/olcne/nginx:$VERSION" -f olm/builds/Dockerfile .
