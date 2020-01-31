#!/bin/sh

#Script para correr o matar Dropbox polybar

case "$1" in
    --toggle)
        if [ "$(pgrep dropbox)" ]; then
            pkill -f dropbox
        else
            dropbox &
        fi
        ;;
    *)
        if [ "$(pgrep dropbox)" ]; then
            echo " Dropbox"
        else
            echo "Sin Dropbox"
        fi
        ;;
esac
