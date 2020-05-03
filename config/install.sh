#!/bin/bash
BASEDIR="$(dirname $(readlink -f $0))"

sudo mkdir -p /home/pi/.config/autostart

cp -fR ${BASEDIR}/feh_startup.desktop /home/pi/.config/autostart/
cp -fR ${BASEDIR}/gpio_startup.desktop /home/pi/.config/autostart/
