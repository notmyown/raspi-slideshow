#! /bin/bash
BASEDIR=$(dirname "$0")
cd ${BASEDIR}/..
git pull

mkdir -p ${BASEDIR}/../images
sudo rclone sync -v gdrive:slideshow ${BASEDIR}/images


