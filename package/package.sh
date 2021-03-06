#!/bin/sh
set -e

export VERSION="0.7.9"
export SRC_DIR=$(cd "$(dirname "$0")"; pwd)

cd $SRC_DIR
rm -rf target
mkdir -p target

cd $SRC_DIR/..
# sbt test
sbt assembly
$SRC_DIR/win/package.sh
$SRC_DIR/linux/package.sh
