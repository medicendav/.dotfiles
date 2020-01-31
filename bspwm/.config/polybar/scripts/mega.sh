#!/bin/sh

case "$1" in
    --toggle)
        if [ "$(pgrep megasync)" ]; then
            pkill -f megasync
        else
            megasync &
        fi
        ;;
    *)
        if [ "$(pgrep megasync)" ]; then
            echo " mega"
        else
            echo "Sin mega"
        fi
        ;;
esac
