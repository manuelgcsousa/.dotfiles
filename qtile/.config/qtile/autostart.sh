#!/bin/sh

xsetroot -solid "#333333"

nm-applet &

dunst -conf $HOME/.config/dunst/dunstrc &
