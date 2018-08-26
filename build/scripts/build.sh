#!/bin/bash

set -xeu
cd "$(dirname "$0")/../.."

# install dependencies and run tests
npm install
npm test

# create application bundle archive
rm -rf build-output
mkdir build-output
tar --exclude="build" --exclude="build-output" --exclude="perf" --exclude=".git" --exclude="test" --exclude="debian" --exclude="examples" --exclude="node_modules" -zcvf ./build-output/app.tar.gz *