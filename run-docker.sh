#!/usr/bin/env bash

docker run --rm --name ios-centos -v /$(pwd):/code ios-centos ./run.sh
