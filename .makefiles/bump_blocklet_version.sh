#!/bin/bash

NEW_VERSION=$(cat version | awk '{$1=$1;print}')

cd website/pages && blocklet version $NEW_VERSION && git add blocklet.yml && cd ../../
echo "bump Blockchain page site to version $NEW_VERSION"

cd website/docs && blocklet version $NEW_VERSION && git add blocklet.yml && cd ../../
echo "bump Blockchain doc site to version $NEW_VERSION"
