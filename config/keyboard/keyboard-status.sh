#!/bin/bash

device='AT Translated Set 2 keyboard'

if [[ $(xinput list-props "$device" | 
		grep "Device Enabled") == *:*1 ]] ; then
		setxkbmap -v | awk -F "+" '/symbols/ {print $2}'
	else
		echo "off"
fi
