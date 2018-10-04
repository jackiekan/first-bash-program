#!/bin/bash

clear
find -iname "*.$1" -ls | sort -nr -k7 | head -n$2 | awk '{print $11, $7}; {total += $7}; END {print "Total size: ", total}'
