#!/bin/bash

image_name="layer_builder"

if [ -z "$1" ]; then  
    echo "Provide desired libraries as a space-separated string wrapped in quotes."
    exit 1;
fi

echo "Building layer with libraries: $1"

# Building image
docker build \
    -t "$image_name" \
    .

# Building layer
docker run \
    -e packages="$1" \
    -v `pwd`:`pwd` \
    -w `pwd` \
    "$image_name" bash build_layer.sh
