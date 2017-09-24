#!/bin/bash
# Enables, disables, or toggles device

device='AT Translated Set 2 keyboard'
#if

#if [[ $1 == -e ]] ; then
#	# Enable
#	xinput --set-prop "$device" "Device Enabled" 1
#	xinput --enable "$device"
#elif [[ $1 == -d ]] ; then
#	# Disable
#	xinput --set-prop "$device" "Device Enabled" 0
#	xinput --disable "$device"
#elif [[ $1 == -t ]] ; then
	# Toggle
		if [[ $(xinput list-props "$device" |
			grep "Device Enabled") == *:*1 ]] ; then
				#xinput --set-prop "$device" "Device Enabled" 0
				xinput --disable "$device"
		else
			#xinput --set-prop "$device" "Device Enabled" 1
			xinput --enable "$device"
		fi
#else
#	echo "usage: $0 [-edt]"
#fi
