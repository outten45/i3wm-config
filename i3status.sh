#!/bin/bash

i3status | while :
do
        read line
        LG=$(setxkbmap -print | grep xkb_symbols | awk -F"+" '{print $2}')
        echo "$LG | $line" || exit 1
done

# i3status | while :
# do
#     read line
#     LG=$(setxkbmap -print | grep xkb_symbols | awk -F"+" '{print $2}')
#     if [ "$LG" == "us(dvorak)" ]; then
#         dat="[{ \"full_text\": \"LANG: ${LG}\", \"color\":\"00FF00\" },"
#     else
#         dat="[{ \"full_text\": \"LANG: ${LG}\", \"color\":\"FF0000\" },"
#     fi
#     echo "${line/[/$dat}" || exit 1
# done
