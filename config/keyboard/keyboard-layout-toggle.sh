#!/bin/bash
# toggles through keymaps
# The order is:
#   gb
#   gb colemak
#
#list=( \
#setxkbmap gb
#setxkbmap gb -variant colemak
#setxkbmap pl
#setxkbmap pl -variant colemak
#)
eval $(setxkbmap -query | sed 's#\<\([^\>]*\):.*\<\(.*\)\>#\1="\2"#' | grep -v options)
# is_colemak=`setxkbmap -query | grep 'colemak'`
# is_pl=`setxkbmap -query | grep 'layout.*pl'`

# echo $layout
# echo $model
# echo $variant


if [[ $variant == "" ]] && [[ $layout == "us" ]]; then
    setxkbmap us -variant colemak
    echo "colemak"
elif [[ $variant == "colemak" ]] && [[ $layout == "us" ]]; then
    setxkbmap us
    echo "us"
else
    setxkbmap us
    echo "us"
fi