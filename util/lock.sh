#!/bin/bash

i3lock -u -i ~/lockscreen.png

COUNTER=0

while true; do
  sleep 5

  pgrep i3lock
  if [ $? -ne 0 ]; then
    break
  fi

  let COUNTER=COUNTER+5

  if [[ "$COUNTER" -eq 300 ]]; then
    xset dpms force off
    let COUNTER=0
  fi
done
