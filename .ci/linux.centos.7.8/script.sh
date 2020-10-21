#!/usr/bin/env bash

source scl_source enable devtoolset-7

set -e

export CMAKE_FLAGS="-DWITH_WAYLAND_SUPPORT=OFF"

$1/.ci/common/linux-build.sh $1 $2
$1/.ci/common/finalize-rpm.sh $1 $2 "centos-7.8"
