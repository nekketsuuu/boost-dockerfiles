#!/bin/sh

if [ $# -lt 1 ]; then
    echo "Usage:"
    echo "  $0 <tag>"
    echo ""
    echo "Example:"
    echo "  $0 1.65.0_gcc-7_ubuntu-16.04"
    exit 1
fi

set -ex
docker build --tag "nekketsuuu/boost:$1" ./docker/
