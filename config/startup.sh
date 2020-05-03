#!/bin/bash
BASEDIR=$(dirname "$0")

./sync.sh
feh --hide-pointer --borderless --quit --slideshow-delay 10 --image-bg black --fullscreen --auto-zoom --reload 1 --recursive -Sfilename ${BASEDIR}/../images

exit 0
