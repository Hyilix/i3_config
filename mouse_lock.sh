#!/bin/bash

if $(pgrep -x "xpointerbarrier" > /dev/null); then pkill xpointerbarrier; else  xpointerbarrier 0 0 0 0; fi
