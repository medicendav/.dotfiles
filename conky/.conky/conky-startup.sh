#! /bin/bash

killall conky
bspc rule -a conky state=floating border=off desktop=\Home
conky -c ~/.conky/notas/notasrc &
conky -c ~/.conky/reloj/Gotham &
