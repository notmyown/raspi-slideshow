#!/bin/bash
./sync.sh
feh --hide-pointer --borderless --quit --slideshow-delay 10 --image-bg black --fullscreen --auto-zoom --reload 1 --recursive -Sfilename /usr/local/Slideshow/images

exit 0
