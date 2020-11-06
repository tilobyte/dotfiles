#!/bin/bash

INCR=10

current_brightness=$(xbacklight -get)

new_brightness=$((($current_brightness + $INCR) % 100))

# take min of inc and new_brightness, to avoid brightness being set to 0
new_brightness=$((new_brightness > $INCR ? new_brightness : $INCR))

xbacklight -set $new_brightness
