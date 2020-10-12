#!/bin/bash

update() {
    # debug
    # echo "updating: $current_directory" >> ~/.config/ncmpcpp/art_debug.txt
    # clear any files in /tmp/now-playing
    rm -rf $copy_to*
    # make sure /tmp/now-playing exists
    # mkdir -p $copy_to
    # copy cover from current_directory to /tmp/now-playing
    find "$current_directory" -regextype posix-egrep -regex ".*/(C|c)over.(jpg|jpeg|png)" -exec cp --reflink {} $copy_to \; # reflink makes btrfs use CoW
    # copy any images to /tmp/now-playing
    # find "$current_directory" -regextype posix-egrep -regex ".*\.(jpg|jpeg|png)" -exec cp {} /tmp/now-playing \;
    echo "$current_directory" > $current_directory_file
}

music_dir=/mnt/collateral/music/catalog/
now_playing=$(ncmpcpp --current-song "%D" 2> /dev/null)
copy_to=/mnt/collateral/music/now-playing/
current_directory=$music_dir$now_playing
if [[ -f "$current_directory" ]]; then
    current_directory=$(dirname "$current_directory")
    echo "$current_directory"
fi
current_directory_file=~/.config/ncmpcpp/current_directory.txt
# if [  `ls -1 /tmp/now-playing/cover.* 2>/dev/null | wc -l ` -gt 0 ] || [ `ls -1 /tmp/now-playing/Cover.* 2>/dev/null | wc -l ` -gt 0 ]; then
# below is more general; if any files exist in /tmp/now-playing
#if [ -n "$(ls -A /tmp/now-playing)" ] ; then
if [ -n "$(ls -A $copy_to)" ] ; then
    past_directory=""
    if test -f "$current_directory_file"; then
        past_directory="$(cat $current_directory_file)"
    fi
    if [ "$current_directory" != "$past_directory" ]; then
        update
    fi
else
    update
fi
