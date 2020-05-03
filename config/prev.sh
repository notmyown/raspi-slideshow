#!/bash/bin -v
exec &> /usr/local/Slideshow/gpio.log

export DISPLAY=:0
/usr/bin/xdotool mousemove 100 100
/usr/bin/xdotool click 1
echo Keypress with $1
set +e
WID='xdotool search --name "feh" | head -1'
set -e
echo $WID
xdotool windowfocus $WID
sleep 1
xdotool key "$1"
#/usr/bin/xdotool search --name feh windowactive --sync %1 key $1 windowactive $(/usr/bin/xdotool getwindowactive)
