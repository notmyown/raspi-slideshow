#!/bin/bash
BASEDIR=$(dirname "$0")

sudo mkdir -p ~/.config/autostart
cp ${BASEDIR}/feh_startup.desktop ~/.config/autostart
cp ${BASEDIR}/gpio_startup.desktop ~/.config/autostart