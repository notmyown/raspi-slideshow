#!/bin/bash
BASEDIR="$(dirname $(readlink -f $0))"

sudo mkdir -p /home/pi/.config/autostart

cp -fR ${BASEDIR}/start_feh.desktop /home/pi/.config/autostart/
cp -fR ${BASEDIR}/start_gpio.desktop /home/pi/.config/autostart/
