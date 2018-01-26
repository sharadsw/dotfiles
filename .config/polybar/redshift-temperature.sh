#!/bin/sh

if [ "$(pgrep -x redshift)" ]; then
    temp=$(redshift -p 2> /dev/null | grep temp | cut -d " " -f 2 | tr -d "[:alpha:]")

    if [ -z $temp ] 
    then
        echo "%{F#65737E}"
    elif $( $temp >= 5000 )
    then
        echo "%{F#8FA1B3}"
    elif $( $temp >= 4000 )
    then
        echo "%{F#EBCB8B}"
    else
        echo "%{F#D08770}"
    fi
fi
