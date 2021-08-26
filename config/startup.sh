#!/bin/bash
BASEDIR="$(dirname $(readlink -f $0))"

${BASEDIR}/sync.sh
feh --hide-pointer --borderless --quit --slideshow-delay 10 --image-bg black --fullscreen --auto-zoom --reload 1 --sort=mtime --recursive -Sfilename ${BASEDIR}/../images

exit 0
