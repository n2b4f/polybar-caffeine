#!/bin/bash

case $1 in
	"toggle-mode")
                status=`xset -q | grep 'DPMS is' | awk '{ print $3 }'`
                if [ $status == 'Enabled' ]; then
                        xset -dpms
                else
   	                xset +dpms
                fi
		;;
	"show-mode")
                status=`xset -q | grep 'DPMS is' | awk '{ print $3 }'`
                if [ $status == 'Enabled' ]; then
                        echo "off"
                else
   	                echo "on"
                fi
		;;
esac
