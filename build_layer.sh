#!/bin/bash

echo "Making layer with dependencies"

build_directory="/tmp/python/"
layer="deployment_layer.zip"

# Delete and remake build directory if present
if [ -d "$build_directory" ]; then
    rm -r "$build_directory"
fi
mkdir "$build_directory"

# Install all libraries requested
echo "Installing $packages"
pip3 install -q --target="$build_directory" $packages

echo "Installed dependencies."
tree -L 1 "$build_directory"

# Zip layer and cleanup build
zip -qr "$layer" "$build_directory"

echo "Zipped layer and cleaned up build, layer is $layer"
