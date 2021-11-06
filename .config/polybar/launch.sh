#!/usr/bin/env bash

killall -q polybar

polybar -r example &
#polybar bar2 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
