#!/usr/bin/env bash

CDIR="$(cd "$(dirname "$0")" && pwd)"
build_dir=$CDIR/build

while getopts A:K:q option
do
  case "${option}"
  in
    q) QUIET=1;;
    A) ARCH=${OPTARG};;
    K) KERNEL=${OPTARG};;
  esac
done

rm -rf $build_dir
mkdir -p $build_dir

for f in *prerun.sh xxh-docker*
do
    cp $CDIR/$f $build_dir/
done

cd $build_dir
mkdir -p docker-rootless
cd docker-rootless
# https://get.docker.com/rootless
DOCKER_VERSION=19.03.8
curl -L -o docker.tgz https://download.docker.com/linux/static/stable/x86_64/docker-$DOCKER_VERSION.tgz
curl -L -o rootless.tgz https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-$DOCKER_VERSION.tgz
tar zxf docker.tgz --strip-components=1
tar zxf rootless.tgz --strip-components=1
rm docker.tgz rootless.tgz
