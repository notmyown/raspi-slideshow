#! /bin/bash
BASEDIR="$(dirname $(readlink -f $0))"
cd ${BASEDIR}/..
git update

mkdir -p ${BASEDIR}/../images
sudo rclone sync -v gdrive:slideshow ${BASEDIR}/../images


