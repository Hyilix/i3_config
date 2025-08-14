#!/bin/bash

# Check if second monitor is found
if [[ $(xrandr | grep HDMI-0 | awk '{print $2}') == "disconnected" ]]
then
    xrandr --output DP-2 --primary --mode 1920x1080 --rate 144.00
else    # Second monitor found. Switch to configuration
    xrandr --output DP-2 --mode 2560x1440 --rate 144.00 --primary --output HDMI-0 --mode 1920x1080 --rate 60.00 --right-of DP-2
fi

